import 'package:drift/drift.dart';
import 'package:find_space/core/data/service/space_database.dart';
import 'package:find_space/space/domain/entity/group.dart';

part 'group.dao.g.dart';

// the _TodosDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [GroupTable])
class GroupDao extends DatabaseAccessor<SpaceDatabase> with _$GroupDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  GroupDao(super.db);

  Future<List<Group>> get allGroups => select(groupTable).get();

  Stream<List<Group>> watchAllGroups() => select(groupTable).watch();

  Future<int> addGroup(Group group) {
    return into(groupTable).insert(
      GroupTableCompanion(
        id: (group.id != null) ? Value(group.id!) : Value.absent(),
        name: Value(group.name),
      ),
      mode: InsertMode.insertOrReplace,
    );
  }
}
