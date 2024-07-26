import 'package:drift/drift.dart';
import 'package:find_space/core/data/service/space_database.dart';
import 'package:find_space/space/domain/entity/space.dart';

part 'space_dao.g.dart';

@DriftAccessor(tables: [SpaceTable])
class SpaceDao extends DatabaseAccessor<SpaceDatabase> with _$SpaceDaoMixin {
  SpaceDao(this.db) : super(db);

  final SpaceDatabase db;

  Future<List<Space>> getSpaces() {
    final dramas = select(spaceTable).get();
    return dramas;
  }

  Future<void> upsertSpace({required Space space}) async {
    await into(spaceTable).insertOnConflictUpdate(SpaceTableCompanion(
      id: (space.id != null) ? Value(space.id!) : Value.absent(),
      name: Value(space.name),
      image: Value(space.image),
    ),);
  }

  Future<List<String?>> getGroups() {
    final query = selectOnly(spaceTable, distinct: true)
      ..addColumns([spaceTable.group]);

    return query.map((row) => row.read(spaceTable.group)).get();
  }

  Future<List<Space>> getDramasByCategory(String category) {
    final spaces =  (select(spaceTable)..where((t) => t.group.equals(category))).get();
    return spaces;
  }

  Stream<List<String?>> watchGroups() {
    final query = selectOnly(spaceTable, distinct: true)
      ..addColumns([spaceTable.group]);

    return query.map((row) => row.read(spaceTable.group)).watch();
  }

  Stream<List<Space>> watchSpaces() => select(spaceTable).watch();

  Future<void> deleteSpace(int id) async {
    await (delete(spaceTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}
