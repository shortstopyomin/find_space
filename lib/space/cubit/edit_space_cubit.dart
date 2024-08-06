import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/usecase/add_space_use_case.dart';
import 'package:find_space/space/permission/permission_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

part 'edit_space_cubit.freezed.dart';
part 'edit_space_state.dart';

class EditSpaceCubit extends Cubit<EditSpaceState> {
  EditSpaceCubit({
    Group? group,
    Space? space,
    double? rating,
    bool? isImageExisted,
    String? imagePath,
  }) : super(AttributesSelected(
    group: group, space: space, rating: rating, isImageExisted: isImageExisted, imagePath: imagePath,
  ),);

  // final WatchGroupsUseCase useCase = getIt();

  PermissionService get permissionService => getIt<PermissionService>();

  Future<void> updateSpace({
    required Space space,
  }) async {
    final AddSpaceUseCase addSpaceUseCase = getIt();
    // emit(const LoadingState());
    await state.maybeWhen(
        attributesSelected: (isLoading, group, spaceState, ratingState, isImageExisted, imagePath, spaceUpdated) async {
          emit((state as AttributesSelected).copyWith(
            isLoading: true,
          ),);
          if (isImageExisted == false && (imagePath == null || imagePath.isEmpty)) {
            await addSpaceUseCase.updateSpace(space: space.copyWith(image: null),);
            return;
          }
          if (imagePath != null && imagePath.isNotEmpty) {
            final file = File(imagePath);
            final spaceImage = await file.readAsBytes();
            await addSpaceUseCase.updateSpace(space: space.copyWith(image: spaceImage),);
            return;
          }
          await addSpaceUseCase.updateSpace(space: space);
        },
        orElse: () {},
    );
    emit((state as AttributesSelected).copyWith(
      isLoading: false,
      spaceUpdated: true,
    ),);
  }

  Future<void> requestImageSourcePicker({
    required BuildContext context,
    required ImageSource imageSource,
  }) async {
    // Handle permissions according to image source,
    final canProceed = await _handleImageUploadPermissions(context, imageSource);
    // pick image from gallery or camera
    if (canProceed) {
      try {
        final file = await pickImage(imageSource);

        if (file != null) {

          onSpaceImagePicked(spaceImagePath: file.path);
        }
      } on PlatformException catch(e) {
        debugPrint('Failed to pick image: $e');
      }
    }
  }

  Future<bool> _handleImageUploadPermissions(BuildContext context, ImageSource? _imageSource) async {
    if (_imageSource == null) {
      return false;
    }
    if (_imageSource == ImageSource.camera) {
      return permissionService.handleCameraPermission(context);
    } else if (_imageSource == ImageSource.gallery) {
      return permissionService.handlePhotosPermission(context);
    } else {
      return false;
    }
  }

  Future<File?> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    if (source == ImageSource.camera) {
      final pickedFile = await picker.pickImage(
        source: source,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 60,
      );
      if (pickedFile != null) {
        return File(pickedFile.path);
      } else {
        return null;
      }
    } else {
      final pickedFile = await picker.pickImage(
        source: source,
        imageQuality: 70,
      );
      if (pickedFile != null) {
        return File(pickedFile.path);
      } else {
        return null;
      }
    }
  }

  Future<PermissionStatus> requestCameraPermission() async {
    return Permission.camera.request();
  }

  void onSpaceImagePicked({required String spaceImagePath}) {
    debugPrint('onSpaceImagePicked, spaceImagePath = $spaceImagePath');
    emit((state as AttributesSelected).copyWith(
      imagePath: spaceImagePath,
    ),);

    // The following will overwrite all the state attributes.
    // emit(CreateSpaceState.attributesSelected(
    //   imagePath: spaceImagePath,
    // ),);
  }

  void deletePickedImage() {
    emit((state as AttributesSelected).copyWith(
      isImageExisted: false,
      imagePath: '',
    ),);
  }

  Future<void> onGroupSelected({
    required Group group,
  }) async {
    emit((state as AttributesSelected).copyWith(
      group: group,
    ),);
  }

  Future<void> onRatingUpdated({
    required double rating,
  }) async {
    emit((state as AttributesSelected).copyWith(
      rating: rating,
    ),);
  }

}
