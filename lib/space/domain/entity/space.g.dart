// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpaceImpl _$$SpaceImplFromJson(Map<String, dynamic> json) => _$SpaceImpl(
      name: json['name'] as String,
      group: (json['group'] as num).toInt(),
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      id: (json['id'] as num?)?.toInt(),
      image: _$JsonConverterFromJson<List<int>, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$SpaceImplToJson(_$SpaceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'group': instance.group,
      'description': instance.description,
      'rating': instance.rating,
      'id': instance.id,
      'image': _$JsonConverterToJson<List<int>, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
