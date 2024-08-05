import 'dart:async';

import 'package:find_space/core/data/service/space_database.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

class SpaceRepositoryImpl extends SpaceRepository implements Disposable {
  SpaceRepositoryImpl({
    required SpaceDatabase spaceDatabase,
  }) : _spaceDatabase = spaceDatabase;

  final SpaceDatabase _spaceDatabase;

  @override
  Future<List<Group>> getGroups() {
    return _spaceDatabase.groupDao.allGroups;
  }

  @override
  Future<List<Space>> getSpaces() {
    return _spaceDatabase.spaceDao.getSpaces();
  }

  @override
  Stream<List<Group>> watchGroups() {
    return _spaceDatabase.groupDao.watchAllGroups();
  }

  @override
  Stream<List<Space>> watchSpaces() {
    return _spaceDatabase.spaceDao.watchSpaces();
  }

  @override
  Future<List<Space>> fetchSpacesInGroup({
    int? groupId,
  }) {
    return _spaceDatabase.spaceDao.spacesInGroup(groupId);
  }

  @override
  Stream<List<Space>> watchSpacesInGroup({
      int? groupId,
  }) {
    return _spaceDatabase.spaceDao.watchSpacesInGroup(groupId);
  }

  @override
  Future<int> addGroup({
    required Group group,
  }) {
    debugPrint('SpaceRepositoryImpl, group.name = ${group.name}');
    return _spaceDatabase.groupDao.addGroup(group);
  }

  @override
  Future<int> addSpace({
    required Space space,
  }) {
    debugPrint('SpaceRepositoryImpl, space.name = ${space.name}, space.group = ${space.group}, drama.image = ${space.image},');
    return _spaceDatabase.spaceDao.insertSpace(space: space);
  }

  @override
  Stream<Space?> watchSpace({required int id}) {
    return _spaceDatabase.spaceDao.watchSpace(id);
  }

  @override
  Future<int> updateSpace({
    required Space space,
  }) {
    return _spaceDatabase.spaceDao.upsertSpace(space: space);
  }

  @override
  Future<void> deleteSpace({required int id}) {
    debugPrint('SpaceRepositoryImpl, deleteDrama() , id = $id');
    return _spaceDatabase.spaceDao.deleteSpace(id);
  }

  @override
  FutureOr onDispose() {}
}
