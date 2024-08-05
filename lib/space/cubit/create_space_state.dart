part of 'create_space_cubit.dart';

@freezed
sealed class CreateSpaceState with _$CreateSpaceState {
  // const factory CreateSpaceState.initial() = InitialState;

  const factory CreateSpaceState.loading() = LoadingState;

  const factory CreateSpaceState.attributesSelected({
    Group? group,
    @Default(3) double rating,
    @Default(null) String? imagePath,
  }) = AttributesSelected;

  const factory CreateSpaceState.spaceCreated({
    int? groupId,
  }) = SpaceCreatedState;

  const factory CreateSpaceState.error(String message) = CreateSpaceErrorState;
}
