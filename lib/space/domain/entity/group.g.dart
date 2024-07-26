// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt(),
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'selected': instance.selected,
    };
