// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_space_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateSpaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Group? group, double rating, String? imagePath)
        attributesSelected,
    required TResult Function(int? groupId) spaceCreated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult? Function(int? groupId)? spaceCreated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult Function(int? groupId)? spaceCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceCreatedState value) spaceCreated,
    required TResult Function(CreateSpaceErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceCreatedState value)? spaceCreated,
    TResult? Function(CreateSpaceErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceCreatedState value)? spaceCreated,
    TResult Function(CreateSpaceErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSpaceStateCopyWith<$Res> {
  factory $CreateSpaceStateCopyWith(
          CreateSpaceState value, $Res Function(CreateSpaceState) then) =
      _$CreateSpaceStateCopyWithImpl<$Res, CreateSpaceState>;
}

/// @nodoc
class _$CreateSpaceStateCopyWithImpl<$Res, $Val extends CreateSpaceState>
    implements $CreateSpaceStateCopyWith<$Res> {
  _$CreateSpaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$CreateSpaceStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'CreateSpaceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Group? group, double rating, String? imagePath)
        attributesSelected,
    required TResult Function(int? groupId) spaceCreated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult? Function(int? groupId)? spaceCreated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult Function(int? groupId)? spaceCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceCreatedState value) spaceCreated,
    required TResult Function(CreateSpaceErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceCreatedState value)? spaceCreated,
    TResult? Function(CreateSpaceErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceCreatedState value)? spaceCreated,
    TResult Function(CreateSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CreateSpaceState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$AttributesSelectedImplCopyWith<$Res> {
  factory _$$AttributesSelectedImplCopyWith(_$AttributesSelectedImpl value,
          $Res Function(_$AttributesSelectedImpl) then) =
      __$$AttributesSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group? group, double rating, String? imagePath});

  $GroupCopyWith<$Res>? get group;
}

/// @nodoc
class __$$AttributesSelectedImplCopyWithImpl<$Res>
    extends _$CreateSpaceStateCopyWithImpl<$Res, _$AttributesSelectedImpl>
    implements _$$AttributesSelectedImplCopyWith<$Res> {
  __$$AttributesSelectedImplCopyWithImpl(_$AttributesSelectedImpl _value,
      $Res Function(_$AttributesSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? rating = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$AttributesSelectedImpl(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$AttributesSelectedImpl implements AttributesSelected {
  const _$AttributesSelectedImpl(
      {this.group, this.rating = 3, this.imagePath = null});

  @override
  final Group? group;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String? imagePath;

  @override
  String toString() {
    return 'CreateSpaceState.attributesSelected(group: $group, rating: $rating, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesSelectedImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, rating, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesSelectedImplCopyWith<_$AttributesSelectedImpl> get copyWith =>
      __$$AttributesSelectedImplCopyWithImpl<_$AttributesSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Group? group, double rating, String? imagePath)
        attributesSelected,
    required TResult Function(int? groupId) spaceCreated,
    required TResult Function(String message) error,
  }) {
    return attributesSelected(group, rating, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult? Function(int? groupId)? spaceCreated,
    TResult? Function(String message)? error,
  }) {
    return attributesSelected?.call(group, rating, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult Function(int? groupId)? spaceCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (attributesSelected != null) {
      return attributesSelected(group, rating, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceCreatedState value) spaceCreated,
    required TResult Function(CreateSpaceErrorState value) error,
  }) {
    return attributesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceCreatedState value)? spaceCreated,
    TResult? Function(CreateSpaceErrorState value)? error,
  }) {
    return attributesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceCreatedState value)? spaceCreated,
    TResult Function(CreateSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (attributesSelected != null) {
      return attributesSelected(this);
    }
    return orElse();
  }
}

abstract class AttributesSelected implements CreateSpaceState {
  const factory AttributesSelected(
      {final Group? group,
      final double rating,
      final String? imagePath}) = _$AttributesSelectedImpl;

  Group? get group;
  double get rating;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$AttributesSelectedImplCopyWith<_$AttributesSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpaceCreatedStateImplCopyWith<$Res> {
  factory _$$SpaceCreatedStateImplCopyWith(_$SpaceCreatedStateImpl value,
          $Res Function(_$SpaceCreatedStateImpl) then) =
      __$$SpaceCreatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? groupId});
}

/// @nodoc
class __$$SpaceCreatedStateImplCopyWithImpl<$Res>
    extends _$CreateSpaceStateCopyWithImpl<$Res, _$SpaceCreatedStateImpl>
    implements _$$SpaceCreatedStateImplCopyWith<$Res> {
  __$$SpaceCreatedStateImplCopyWithImpl(_$SpaceCreatedStateImpl _value,
      $Res Function(_$SpaceCreatedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$SpaceCreatedStateImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SpaceCreatedStateImpl implements SpaceCreatedState {
  const _$SpaceCreatedStateImpl({this.groupId});

  @override
  final int? groupId;

  @override
  String toString() {
    return 'CreateSpaceState.spaceCreated(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceCreatedStateImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceCreatedStateImplCopyWith<_$SpaceCreatedStateImpl> get copyWith =>
      __$$SpaceCreatedStateImplCopyWithImpl<_$SpaceCreatedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Group? group, double rating, String? imagePath)
        attributesSelected,
    required TResult Function(int? groupId) spaceCreated,
    required TResult Function(String message) error,
  }) {
    return spaceCreated(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult? Function(int? groupId)? spaceCreated,
    TResult? Function(String message)? error,
  }) {
    return spaceCreated?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult Function(int? groupId)? spaceCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (spaceCreated != null) {
      return spaceCreated(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceCreatedState value) spaceCreated,
    required TResult Function(CreateSpaceErrorState value) error,
  }) {
    return spaceCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceCreatedState value)? spaceCreated,
    TResult? Function(CreateSpaceErrorState value)? error,
  }) {
    return spaceCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceCreatedState value)? spaceCreated,
    TResult Function(CreateSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (spaceCreated != null) {
      return spaceCreated(this);
    }
    return orElse();
  }
}

abstract class SpaceCreatedState implements CreateSpaceState {
  const factory SpaceCreatedState({final int? groupId}) =
      _$SpaceCreatedStateImpl;

  int? get groupId;
  @JsonKey(ignore: true)
  _$$SpaceCreatedStateImplCopyWith<_$SpaceCreatedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSpaceErrorStateImplCopyWith<$Res> {
  factory _$$CreateSpaceErrorStateImplCopyWith(
          _$CreateSpaceErrorStateImpl value,
          $Res Function(_$CreateSpaceErrorStateImpl) then) =
      __$$CreateSpaceErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateSpaceErrorStateImplCopyWithImpl<$Res>
    extends _$CreateSpaceStateCopyWithImpl<$Res, _$CreateSpaceErrorStateImpl>
    implements _$$CreateSpaceErrorStateImplCopyWith<$Res> {
  __$$CreateSpaceErrorStateImplCopyWithImpl(_$CreateSpaceErrorStateImpl _value,
      $Res Function(_$CreateSpaceErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateSpaceErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateSpaceErrorStateImpl implements CreateSpaceErrorState {
  const _$CreateSpaceErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateSpaceState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSpaceErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSpaceErrorStateImplCopyWith<_$CreateSpaceErrorStateImpl>
      get copyWith => __$$CreateSpaceErrorStateImplCopyWithImpl<
          _$CreateSpaceErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Group? group, double rating, String? imagePath)
        attributesSelected,
    required TResult Function(int? groupId) spaceCreated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult? Function(int? groupId)? spaceCreated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Group? group, double rating, String? imagePath)?
        attributesSelected,
    TResult Function(int? groupId)? spaceCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceCreatedState value) spaceCreated,
    required TResult Function(CreateSpaceErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceCreatedState value)? spaceCreated,
    TResult? Function(CreateSpaceErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceCreatedState value)? spaceCreated,
    TResult Function(CreateSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateSpaceErrorState implements CreateSpaceState {
  const factory CreateSpaceErrorState(final String message) =
      _$CreateSpaceErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CreateSpaceErrorStateImplCopyWith<_$CreateSpaceErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
