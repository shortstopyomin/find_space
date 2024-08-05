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

part 'create_space_cubit.freezed.dart';
part 'create_space_state.dart';

class CreateSpaceCubit extends Cubit<CreateSpaceState> {
  CreateSpaceCubit() : super(const AttributesSelected());

  // final WatchGroupsUseCase useCase = getIt();

  PermissionService get permissionService => getIt<PermissionService>();

  Future<void> addSpace({
    required Space space,
  }) async {
    debugPrint('1. addSpace,  spaceName = $space,');
    final AddSpaceUseCase addSpaceUseCase = getIt();
    emit(const LoadingState());
    final rowId = await addSpaceUseCase(space);
    debugPrint('2. addGroup,  rowId = $rowId');
    emit(const SpaceCreatedState().copyWith(groupId: space.group));
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
          debugPrint('_requestImageImageSource file path = ${file.path}');
          debugPrint('file absolute = ${file.absolute}');

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
    final _picker = ImagePicker();
    if (source == ImageSource.camera) {
      final pickedFile = await _picker.pickImage(
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
      final pickedFile = await _picker.pickImage(
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
    debugPrint('deletePickedImage');
    emit((state as AttributesSelected).copyWith(
      imagePath: null,
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
