import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:find_space/core/data/service/dao/group.dao.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

// import the migrations tooling
import 'package:drift_dev/api/migrations.dart';

import 'dao/space_dao.dart';

part 'space_database.g.dart';

@UseRowClass(Space)
class SpaceTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1,)();
  IntColumn get group => integer().references(GroupTable, #id)();
  TextColumn get description => text()();
  RealColumn get rating => real().withDefault(const Constant(0.0))();
  BlobColumn get image => blob().nullable()();
}

@UseRowClass(Group)
class GroupTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1,)();
}

@DriftDatabase(
  tables: [SpaceTable, GroupTable,],
  daos: [SpaceDao, GroupDao,],
)
class SpaceDatabase extends _$SpaceDatabase {
  SpaceDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
      },
      beforeOpen: (details) async {
        if (kDebugMode) {
          await validateDatabaseSchema();
        };
      },
    );
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}