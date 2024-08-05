part of 'spaces_cubit.dart';

@freezed
sealed class SpacesState with _$SpacesState {
  const factory SpacesState.initial() = SpacesInitial;

  const factory SpacesState.loading() = SpacesLoading;

  const factory SpacesState.groupsSpacesLoaded({
    @Default(false) bool isLoading,
    List<Group>? groups,
    List<Space>? spaces,
    int? selectedGroupId,
  }) = GroupSpacesLoaded;

  // const factory SpacesState.spacesLoaded({
  //   required List<Space> spaces,
  // }) = SpacesLoaded;

  const factory SpacesState.error(String message) = SpacesError;
}
