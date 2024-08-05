import 'package:drift/drift.dart';
import 'package:find_space/core/data/service/space_database.dart';
import 'package:find_space/space/domain/entity/space.dart';

part 'space_dao.g.dart';

@DriftAccessor(tables: [SpaceTable])
class SpaceDao extends DatabaseAccessor<SpaceDatabase> with _$SpaceDaoMixin {
  SpaceDao(this.db) : super(db);

  final SpaceDatabase db;

  Future<List<Space>> getSpaces() {
    final spaces = select(spaceTable).get();
    return spaces;
  }

  Future<int> insertSpace({required Space space}) {
    return into(spaceTable).insert(SpaceTableCompanion(
      group: Value(space.group),
      name: Value(space.name),
      rating: Value(space.rating),
      description: Value(space.description),
      image: Value(space.image),
    ),);
  }

  Future<int> upsertSpace({required Space space}) {
    return attachedDatabase.transaction(() async {
      return into(spaceTable).insertOnConflictUpdate(SpaceTableCompanion(
        id: (space.id != null) ? Value(space.id!) : Value.absent(),
        group: Value(space.group),
        name: Value(space.name),
        rating: Value(space.rating),
        description: Value(space.description),
        image: Value(space.image),
      ),);
    });
  }

  // Future<void> upsertSpace({required Space space}) async {
  //   await into(spaceTable).insertOnConflictUpdate(SpaceTableCompanion(
  //     id: (space.id != null) ? Value(space.id!) : Value.absent(),
  //     name: Value(space.name),
  //     image: Value(space.image),
  //   ),);
  // }

  Stream<List<Space>> watchSpaces() => select(spaceTable).watch();

  Future<List<Space>> getSpacesByGroupId(int id) =>
      (select(spaceTable)..where((tbl) => tbl.group.equals(id))).get();

  Stream<Space?> watchSpace(int id) {
    return (select(spaceTable)..where((t) => t.id.equals(id)))
        .watchSingleOrNull();
  }

  Future<void> deleteSpace(int id) async {
    await (delete(spaceTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Stream<List<Space>> watchSpacesInGroup(int? groupId) {
    final query = (select(spaceTable)..orderBy([(t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc)])).join([
      leftOuterJoin(groupTable, groupTable.id.equalsExp(spaceTable.group))
    ]);

    if (groupId != null) {
      query.where(groupTable.id.equals(groupId));
    } else {
      query.where(groupTable.id.isNull());
    }

    return query.map((row) {
      return row.readTable(spaceTable);
    }).watch();
  }

  Future<List<Space>> spacesInGroup(int? groupId) {
    final query = (select(spaceTable)..orderBy([(t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc)])).join([
      leftOuterJoin(groupTable, groupTable.id.equalsExp(spaceTable.group))
    ]);

    if (groupId != null) {
      query.where(groupTable.id.equals(groupId));
    } else {
      query.where(groupTable.id.isNull());
    }

    return query.map((row) {
      return row.readTable(spaceTable);
    }).get();
  }
}
