import 'package:find_space/space/permission/permission_service.dart';
import 'package:find_space/space/ui/dialog_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerPermissionService implements PermissionService {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return Permission.camera.request();
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return Permission.photos.request();
  }

  @override
  Future<bool> handleCameraPermission(BuildContext context) async {
    final PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      debugPrint('😰 😰 😰 😰 😰 😰 Permission to camera was not granted! 😰 😰 😰 😰 😰 😰');
      showTwoButtonAlertDialog(
        context: context,
        titleText: 'Camera Permission',
        alertText: 'Camera permission should Be granted to use this feature, would you like to go to app settings to give camera permission?',
        positiveButtonText: 'Yes',
        negativeButtonText: 'No',
        onPositivePressedCallback: () async {
          await openAppSettings();
          context.pop();
        },
        onNegativePressedCallback: () {
          context.pop();
        },
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission(BuildContext context) async {
    final PermissionStatus photosPermissionStatus = await requestPhotosPermission();

    if (photosPermissionStatus != PermissionStatus.granted) {
      debugPrint('😰 😰 😰 😰 😰 😰 Permission to photos not granted! 😰 😰 😰 😰 😰 😰');
      showTwoButtonAlertDialog(
        context: context,
        titleText: 'Photos Permission',
        alertText: 'Photos permission should Be granted to use this feature, would you like to go to app settings to give photos permission?',
        positiveButtonText: 'Yes',
        negativeButtonText: 'No',
        onPositivePressedCallback: () async {
          await openAppSettings();
          context.pop();
        },
        onNegativePressedCallback: () {
          debugPrint('onNegativePressedCallback');
          context.pop();
        },
      );
      return false;
    }
    return true;
  }
}
