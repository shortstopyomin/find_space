import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space.freezed.dart';

part 'space.g.dart';

@freezed
class Space with _$Space {
  const factory Space({
    required String name,
    required int group,
    required String description,
    required double rating,
    int? id,
    @Uint8ListConverter()
    Uint8List? image,
  }) = _Space;

  // Create a Ingredient from JSON data
  factory Space.fromJson(Map<String, dynamic> json) =>
      _$SpaceFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List, List<int>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
