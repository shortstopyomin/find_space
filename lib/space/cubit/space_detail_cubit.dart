import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/usecase/add_space_use_case.dart';
import 'package:find_space/space/domain/usecase/delete_space_use_case.dart';
import 'package:find_space/space/domain/usecase/space_detail_use_case.dart';
import 'package:find_space/space/permission/permission_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

part 'space_detail_cubit.freezed.dart';
part 'space_detail_state.dart';

class SpaceDetailCubit extends Cubit<SpaceDetailState> {
  SpaceDetailCubit({
    Group? group,
    String? imagePath,
  }) : super(SpaceDetailLoaded(group: group,),);

  // Stream<Space?>? spaceStream;
  StreamSubscription<Space?>? spaceStream;

  @override
  Future<void> close() {
    debugPrint('cancel');
    spaceStream?.cancel();
    return super.close();
  }

  PermissionService get permissionService => getIt<PermissionService>();

  Future<void> watchSpaceStream(int id) async {
    final SpaceDetailUseCase spaceDetailUseCase = getIt();

    spaceStream = spaceDetailUseCase(id)
      .listen((space) {
        debugPrint('555 watchSpaceStream() space = ${space}');
        if (isClosed) return;
        emit((state as SpaceDetailLoaded).copyWith(
          space: space,
        ),);
      });
  }

  Future<void> deleteSpace({required int id}) async {
    final DeleteSpaceUseCase deleteSpaceUseCase = getIt();
    emit((state as SpaceDetailLoaded).copyWith(
      isLoading: true,
    ),);
    await deleteSpaceUseCase(id);
    await Future.delayed(const Duration(seconds: 1));
    // emit(const SpaceDeletedState());
  }

  // Future<void> requestImageSourcePicker({
  //   required BuildContext context,
  //   required ImageSource imageSource,
  // }) async {
  //   // Handle permissions according to image source,
  //   final canProceed = await _handleImageUploadPermissions(context, imageSource);
  //   // pick image from gallery or camera
  //   if (canProceed) {
  //     try {
  //       final file = await pickImage(imageSource);
  //
  //       if (file != null) {
  //         debugPrint('_requestImageImageSource file path = ${file.path}');
  //         debugPrint('file absolute = ${file.absolute}');
  //
  //         onSpaceImagePicked(spaceImagePath: file.path);
  //       }
  //     } on PlatformException catch(e) {
  //       debugPrint('Failed to pick image: $e');
  //     }
  //   }
  // }

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

  Future<void> onGroupSelected({
    required Group group,
  }) async {
    emit((state as SpaceDetailLoaded).copyWith(
      group: group,
    ),);
  }

}
