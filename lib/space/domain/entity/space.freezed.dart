// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Space _$SpaceFromJson(Map<String, dynamic> json) {
  return _Space.fromJson(json);
}

/// @nodoc
mixin _$Space {
  String get name => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceCopyWith<Space> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceCopyWith<$Res> {
  factory $SpaceCopyWith(Space value, $Res Function(Space) then) =
      _$SpaceCopyWithImpl<$Res, Space>;
  @useResult
  $Res call(
      {String name,
      String group,
      int? id,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class _$SpaceCopyWithImpl<$Res, $Val extends Space>
    implements $SpaceCopyWith<$Res> {
  _$SpaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? group = null,
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpaceImplCopyWith<$Res> implements $SpaceCopyWith<$Res> {
  factory _$$SpaceImplCopyWith(
          _$SpaceImpl value, $Res Function(_$SpaceImpl) then) =
      __$$SpaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String group,
      int? id,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class __$$SpaceImplCopyWithImpl<$Res>
    extends _$SpaceCopyWithImpl<$Res, _$SpaceImpl>
    implements _$$SpaceImplCopyWith<$Res> {
  __$$SpaceImplCopyWithImpl(
      _$SpaceImpl _value, $Res Function(_$SpaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? group = null,
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SpaceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpaceImpl implements _Space {
  const _$SpaceImpl(
      {required this.name,
      required this.group,
      this.id,
      @Uint8ListConverter() this.image});

  factory _$SpaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpaceImplFromJson(json);

  @override
  final String name;
  @override
  final String group;
  @override
  final int? id;
  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'Space(name: $name, group: $group, id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, group, id, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceImplCopyWith<_$SpaceImpl> get copyWith =>
      __$$SpaceImplCopyWithImpl<_$SpaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpaceImplToJson(
      this,
    );
  }
}

abstract class _Space implements Space {
  const factory _Space(
      {required final String name,
      required final String group,
      final int? id,
      @Uint8ListConverter() final Uint8List? image}) = _$SpaceImpl;

  factory _Space.fromJson(Map<String, dynamic> json) = _$SpaceImpl.fromJson;

  @override
  String get name;
  @override
  String get group;
  @override
  int? get id;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$SpaceImplCopyWith<_$SpaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
