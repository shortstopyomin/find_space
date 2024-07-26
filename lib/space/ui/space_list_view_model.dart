import 'dart:collection';
import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/usecase/add_group_use_case.dart';
import 'package:find_space/space/domain/usecase/space_list_use_case.dart';
import 'package:find_space/space/domain/usecase/watch_groups_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

class SpaceListViewModel {

  SpaceListViewModel() {
    // final dramasStream = watchSpaces();
    allGroups = watchGroups()..listen((groups) {
      debugPrint('999 viewModel watchGroups() allGroups = $groups');
    });

    // ZipStream.zip2
    // Rx.zip2(categoriesStream, dramasStream,
    //     (List<String?> spaceGroupList, List<Space> dramaList) {
    //   final dramasByCategory = spaceGroupList.map(
    //     (group) {
    //       final dramas =
    //           dramaList.where((drama) => drama.group == group).toList();
    //       return DramasByCategory(category: category!, dramas: dramas);
    //     },
    //   ).toList();
    //   return dramasByCategory;
    // }).listen(_spaceGroupListSubject.add);
  }

  final List<String> groups = [];

  late final Stream<List<Group>> allGroups;

  final _spaceGroupListSubject = BehaviorSubject<List<String>>();

  Stream<List<String>> get spaceGroupList =>
      _spaceGroupListSubject;

  final _loadingSubject = BehaviorSubject<bool>.seeded(false);

  ValueStream<bool> get loading => _loadingSubject;

  final _selectedGroupIndexSubject = BehaviorSubject<int>.seeded(-1);

  ValueStream<int> get selectedGroupIndex => _selectedGroupIndexSubject;

  Future<void> close() async {
    // await _spaceGroupListSubject.close();
    await _selectedGroupIndexSubject.close();
  }

  Future<List<String?>> getGroups() async {
    final GetSpacesUseCase getSpacesUseCase = getIt();
    final allCategories = await getSpacesUseCase.getGroups();
    return allCategories;
  }

  Stream<List<Group>> watchGroups() {
    final WatchGroupsUseCase watchGroupUseCase = getIt();

    return watchGroupUseCase();
  }

  Stream<List<Space>> watchSpaces() {
    final GetSpacesUseCase getSpacesUseCase = getIt();
    final allDramas = getSpacesUseCase.watchSpaces()
      ..listen((dramas) {
      });
    return allDramas;
  }

  Future<void> onSelectedIndexChanged({
    required int selectedIndex,
  }) async {
    debugPrint('selectedIndex = $selectedIndex');
    // _loadingSubject.add(true);
    _selectedGroupIndexSubject.add(selectedIndex);
  }

  Future<void> addGroup({
    required String groupName,
  }) async {
    debugPrint('1. addGroup,  groupName = $groupName, groups.length = ${groups.length}');
    final AddGroupUseCase addGroupUseCase = getIt();
    _loadingSubject.add(true);
    groups.add(groupName);
    final rowId = await addGroupUseCase(Group(name: groupName));
    debugPrint('2. addGroup,  rowId = $rowId');
    debugPrint('3. addGroup,  groups.length = ${groups.length}');
    // _spaceGroupListSubject.add(groups);
    _loadingSubject.add(false);
  }
}
