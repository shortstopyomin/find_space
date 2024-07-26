import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

part 'group.g.dart';

@freezed
class Group with _$Group {
  const factory Group({
    required String name,
    int? id,
    @Default(false) bool selected,
  }) = _Group;

  // Create a Ingredient from JSON data
  factory Group.fromJson(Map<String, dynamic> json) =>
      _$GroupFromJson(json);
}
