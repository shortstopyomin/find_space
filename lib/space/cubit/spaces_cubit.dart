import 'package:bloc/bloc.dart';
import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/usecase/add_group_use_case.dart';
import 'package:find_space/space/domain/usecase/space_list_use_case.dart';
import 'package:find_space/space/domain/usecase/watch_groups_use_case.dart';
import 'package:find_space/space/domain/usecase/watch_spaces_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'spaces_cubit.freezed.dart';
part 'spaces_state.dart';

class SpacesCubit extends Cubit<SpacesState> {
  SpacesCubit() : super(const SpacesInitial());

  final WatchGroupsUseCase watchGroupsUseCase = getIt();
  final WatchSpacesUseCase watchSpacesUseCase = getIt();
  final SpaceListUseCase spaceListUseCase = getIt();

  Future<void> watchData() async {
    final groupsStream = watchGroups();
    // final spacesStream = watchSpaces();

    // Rx.zip2(spacesStream, groupsStream,
    //         (List<Space> categoryList, List<Group> dramaList) {
    //       final dramasByCategory = categoryList.map(
    //             (category) {
    //           final dramas =
    //           dramaList.where((drama) => drama.category == category).toList();
    //           return DramasByCategory(category: category!, dramas: dramas);
    //         },
    //       ).toList();
    //       return dramasByCategory;
    //     }).listen;
  }

  Stream<List<Group>> watchGroups() {
    print('111 watchGroups');
    emit(const GroupSpacesLoaded(isLoading: true));
    final allGroups = watchGroupsUseCase()..listen((groups) {
      debugPrint('888 viewModel watchGroups() allGroups = $groups');
      if(groups.isNotEmpty) {
        emit(SpacesState.groupsSpacesLoaded(groups: groups, spaces: [], selectedGroupId: groups[0].id));
        watchSpacesInGroup(groupId: groups[0].id);
      }
    });
    return allGroups;
  }

  Stream<List<Space>> watchSpaces() {
    print('222 watchSpaces');
    final allSpaces = watchSpacesUseCase()..listen((spaces) {
      debugPrint('999 viewModel watchGroups() spaces = $spaces');
      emit((state as GroupSpacesLoaded).copyWith(
        spaces: spaces,
      ),);
    });
    return allSpaces;
  }

  Future<void> fetchSpacesInGroup({required int? groupId}) async {
    debugPrint('666 fetchSpacesInGroup');
    emit((state as GroupSpacesLoaded).copyWith(
      isLoading: true,
    ),);

    final allSpacesInGroup = await spaceListUseCase.fetchSpacesInSpaces(groupId: groupId!);
    for (final space in allSpacesInGroup) {
      debugPrint('for allSpacesInGroup() space.name = ${space.name}');
    }
    emit((state as GroupSpacesLoaded).copyWith(
      spaces: allSpacesInGroup,
    ),);
  }

  Stream<List<Space>> watchSpacesInGroup({required int? groupId}) {
    print('333 watchSpacesInGroup');
    emit((state as GroupSpacesLoaded).copyWith(
      isLoading: true,
    ),);
    final allSpacesInGroup = watchSpacesUseCase.watchSpacesInGroup(groupId)..listen((spaces) {
      debugPrint('000 viewModel watchSpacesInGroup() spaces = $spaces');
      for (final space in spaces) {
        debugPrint('for watchSpacesInGroup() space.name = ${space.name}');
      }
      emit((state as GroupSpacesLoaded).copyWith(
        spaces: spaces,
      ),);
    });
    return allSpacesInGroup;
  }

  Future<void> onSelectedGroupIndexChanged({
    required int selectedIndex,
    required int groupId,
  }) async {
    emit((state as GroupSpacesLoaded).copyWith(
      selectedGroupId: groupId,
    ),);
    // state.maybeWhen(
    //   groupsSpacesLoaded: (groups, spaces) {
    //     debugPrint('state.maybeWhen selectedIndex = $selectedIndex');
    //     final newGroups = [...groups!];
    //     newGroups.asMap().forEach((index, element) {
    //       newGroups[index] = element.copyWith(selected: false);
    //     });
    //     newGroups[selectedIndex] = newGroups[selectedIndex].copyWith(selected: true);
    //     emit((state as GroupSpacesLoaded).copyWith(
    //       groups: newGroups,
    //     ),);
    //   },
    //   orElse: () {},
    // );
  }

  Future<void> addGroup({
    required String groupName,
  }) async {
    debugPrint('1. addGroup,  groupName = $groupName,');
    final AddGroupUseCase addGroupUseCase = getIt();
    final rowId = await addGroupUseCase(Group(name: groupName));
    debugPrint('2. addGroup,  rowId = $rowId');
    // _spaceGroupListSubject.add(groups);
  }
}
