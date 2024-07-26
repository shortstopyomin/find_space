import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';

abstract class SpaceRepository {
  Future<List<Space?>> getDramas();
  Stream<List<Space>> watchSpaces();
  Future<List<String?>> getGroups();
  Stream<List<Group>> watchGroups();
  Future<void> addSpace({required Space space});
  Future<int> addGroup({required Group group});
  Future<void> updateDrama(Space space);
  Future<void> deleteDrama(int id);
}
