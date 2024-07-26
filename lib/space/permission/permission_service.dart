import 'package:flutter/material.dart';

abstract class PermissionService {
  Future<void> requestPhotosPermission();

  Future<bool> handlePhotosPermission(BuildContext context);

  Future<void> requestCameraPermission();

  Future<bool> handleCameraPermission(BuildContext context);
}
