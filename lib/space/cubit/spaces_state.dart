part of 'spaces_cubit.dart';

@freezed
sealed class SpacesState with _$SpacesState {
  const factory SpacesState.initial() = SpacesInitial;

  const factory SpacesState.loading() = SpacesLoading;

  const factory SpacesState.groupLoaded({
    required List<Group> groups,
  }) = GroupLoaded;

  const factory SpacesState.groupSelected({required int selectedIndex}) = SpaceGroupSelected;

  const factory SpacesState.spacesLoaded(List<Space> spaces) = SpacesLoaded;

  const factory SpacesState.error(String message) = SpacesError;
}
