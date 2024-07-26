import 'package:bloc/bloc.dart';
import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/usecase/add_group_use_case.dart';
import 'package:find_space/space/domain/usecase/watch_groups_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spaces_cubit.freezed.dart';
part 'spaces_state.dart';

class SpacesCubit extends Cubit<SpacesState> {
  SpacesCubit() : super(const SpacesInitial());

  final WatchGroupsUseCase useCase = getIt();

  Stream<List<Group>> watchGroups() {
    print('111 watchGroups');
    emit(const SpacesState.loading());
    final allGroups = useCase()..listen((groups) {
      debugPrint('999 viewModel watchGroups() allGroups = $groups');
      emit(SpacesState.groupLoaded(groups: groups));
    });
    return allGroups;
  }

  Future<void> onSelectedIndexChanged({
    required int selectedIndex,
  }) async {
    state.maybeWhen(
      groupLoaded: (groups) {
        debugPrint('state.maybeWhen selectedIndex = $selectedIndex');
        final newGroups = [...groups];
        newGroups.asMap().forEach((index, element) {
          newGroups[index] = element.copyWith(selected: false);
        });
        newGroups[selectedIndex] = newGroups[selectedIndex].copyWith(selected: true);
        emit(SpacesState.groupLoaded(
          groups: newGroups,
        ),);
      },
      orElse: () {},
    );
  }

  Future<void> addGroup({
    required String groupName,
  }) async {
    debugPrint('1. addGroup,  groupName = $groupName,');
    final AddGroupUseCase addGroupUseCase = getIt();
    emit(const SpacesState.loading());
    // groups.add(groupName);
    final rowId = await addGroupUseCase(Group(name: groupName));
    debugPrint('2. addGroup,  rowId = $rowId');
    // _spaceGroupListSubject.add(groups);
  }

  Future<void> watchSpaces() async {
    // final initialState = state;
    // emit(state.copyWith(loading: true));
    // try {
    //   final address = await useCase.loadLocation();
    //   await Future.delayed(const Duration(seconds: 2));
    //   emit(
    //     FullAddressState(
    //       addressLine1: address.addressLine1,
    //       addressLine2: address.addressLine2,
    //     ),
    //   );
    // } catch (e) {
    //   emit(initialState);
    //   rethrow;
    // }
  }
}
