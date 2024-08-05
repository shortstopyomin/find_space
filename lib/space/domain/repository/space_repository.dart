import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';

abstract class SpaceRepository {
  Future<List<Group>> getGroups();
  Future<List<Space>> getSpaces();
  Stream<List<Group>> watchGroups();
  Stream<List<Space>> watchSpaces();
  Stream<Space?> watchSpace({required int id});
  Future<List<Space>> fetchSpacesInGroup({int? groupId});
  Stream<List<Space>> watchSpacesInGroup({int? groupId});
  Future<int> addSpace({required Space space});
  Future<int> addGroup({required Group group});
  Future<int> updateSpace({required Space space});
  Future<void> deleteSpace({required int id});
}
