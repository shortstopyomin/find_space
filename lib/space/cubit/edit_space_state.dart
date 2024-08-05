part of 'edit_space_cubit.dart';

@freezed
sealed class EditSpaceState with _$EditSpaceState {
  // const factory CreateSpaceState.initial() = InitialState;

  const factory EditSpaceState.loading() = LoadingState;

  const factory EditSpaceState.attributesSelected({
    @Default(false) bool isLoading,
    Group? group,
    Space? space,
    double? rating,
    bool? isImageExisted,
    @Default(null) String? imagePath,
    @Default(false) bool? spaceUpdated,
  }) = AttributesSelected;

  const factory EditSpaceState.spaceUpdated() = SpaceUpdatedState;

  const factory EditSpaceState.error(String message) = EditSpaceErrorState;
}
