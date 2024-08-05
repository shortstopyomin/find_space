part of 'space_detail_cubit.dart';

@freezed
sealed class SpaceDetailState with _$SpaceDetailState {
  // const factory CreateSpaceState.initial() = InitialState;

  const factory SpaceDetailState.loading() = LoadingState;

  const factory SpaceDetailState.spaceDetailLoaded({
    @Default(false) bool isLoading,
    Group? group,
    Space? space,
  }) = SpaceDetailLoaded;

  const factory SpaceDetailState.spaceDeleted() = SpaceDeletedState;

  const factory SpaceDetailState.error(String message) = EditSpaceErrorState;
}
