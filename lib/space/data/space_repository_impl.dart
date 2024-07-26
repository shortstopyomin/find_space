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
  Future<List<Space?>> getDramas() async {
    return _spaceDatabase.spaceDao.getSpaces();
  }

  @override
  Future<List<String?>> getGroups() {
    return _spaceDatabase.spaceDao.getGroups();
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
  Future<int> addGroup({
    required Group group,
  }) {
    debugPrint('SpaceRepositoryImpl, group.name = ${group.name}');
    return _spaceDatabase.groupDao.addGroup(group);
  }

  @override
  Future<void> addSpace({
    required Space space,
  }) {
    debugPrint('SpaceRepositoryImpl, space.name = ${space.name}, space.category = ${space.group}, drama.image = ${space.image},');
    return _spaceDatabase.spaceDao.upsertSpace(space: space);
  }

  @override
  Future<void> updateDrama(Space space) {
    return _spaceDatabase.spaceDao.upsertSpace(space: space);
  }

  @override
  Future<void> deleteDrama(int id) {
    debugPrint('SpaceRepositoryImpl, deleteDrama() , id = $id');
    return _spaceDatabase.spaceDao.deleteSpace(id);
  }

  @override
  FutureOr onDispose() {
    // TODO: implement onDispose
    throw UnimplementedError();
  }
}
