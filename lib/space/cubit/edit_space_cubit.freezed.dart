// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_space_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditSpaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)
        attributesSelected,
    required TResult Function() spaceUpdated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)?
        attributesSelected,
    TResult? Function()? spaceUpdated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space, double? rating,
            bool? isImageExisted, String? imagePath, bool? spaceUpdated)?
        attributesSelected,
    TResult Function()? spaceUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceUpdatedState value) spaceUpdated,
    required TResult Function(EditSpaceErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceUpdatedState value)? spaceUpdated,
    TResult? Function(EditSpaceErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceUpdatedState value)? spaceUpdated,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSpaceStateCopyWith<$Res> {
  factory $EditSpaceStateCopyWith(
          EditSpaceState value, $Res Function(EditSpaceState) then) =
      _$EditSpaceStateCopyWithImpl<$Res, EditSpaceState>;
}

/// @nodoc
class _$EditSpaceStateCopyWithImpl<$Res, $Val extends EditSpaceState>
    implements $EditSpaceStateCopyWith<$Res> {
  _$EditSpaceStateCopyWithImpl(this._value, this._then);

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
    extends _$EditSpaceStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'EditSpaceState.loading()';
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
    required TResult Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)
        attributesSelected,
    required TResult Function() spaceUpdated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)?
        attributesSelected,
    TResult? Function()? spaceUpdated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space, double? rating,
            bool? isImageExisted, String? imagePath, bool? spaceUpdated)?
        attributesSelected,
    TResult Function()? spaceUpdated,
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
    required TResult Function(SpaceUpdatedState value) spaceUpdated,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceUpdatedState value)? spaceUpdated,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceUpdatedState value)? spaceUpdated,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements EditSpaceState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$AttributesSelectedImplCopyWith<$Res> {
  factory _$$AttributesSelectedImplCopyWith(_$AttributesSelectedImpl value,
          $Res Function(_$AttributesSelectedImpl) then) =
      __$$AttributesSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      Group? group,
      Space? space,
      double? rating,
      bool? isImageExisted,
      String? imagePath,
      bool? spaceUpdated});

  $GroupCopyWith<$Res>? get group;
  $SpaceCopyWith<$Res>? get space;
}

/// @nodoc
class __$$AttributesSelectedImplCopyWithImpl<$Res>
    extends _$EditSpaceStateCopyWithImpl<$Res, _$AttributesSelectedImpl>
    implements _$$AttributesSelectedImplCopyWith<$Res> {
  __$$AttributesSelectedImplCopyWithImpl(_$AttributesSelectedImpl _value,
      $Res Function(_$AttributesSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? group = freezed,
    Object? space = freezed,
    Object? rating = freezed,
    Object? isImageExisted = freezed,
    Object? imagePath = freezed,
    Object? spaceUpdated = freezed,
  }) {
    return _then(_$AttributesSelectedImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      space: freezed == space
          ? _value.space
          : space // ignore: cast_nullable_to_non_nullable
              as Space?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      isImageExisted: freezed == isImageExisted
          ? _value.isImageExisted
          : isImageExisted // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      spaceUpdated: freezed == spaceUpdated
          ? _value.spaceUpdated
          : spaceUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  @override
  @pragma('vm:prefer-inline')
  $SpaceCopyWith<$Res>? get space {
    if (_value.space == null) {
      return null;
    }

    return $SpaceCopyWith<$Res>(_value.space!, (value) {
      return _then(_value.copyWith(space: value));
    });
  }
}

/// @nodoc

class _$AttributesSelectedImpl implements AttributesSelected {
  const _$AttributesSelectedImpl(
      {this.isLoading = false,
      this.group,
      this.space,
      this.rating,
      this.isImageExisted,
      this.imagePath = null,
      this.spaceUpdated = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Group? group;
  @override
  final Space? space;
  @override
  final double? rating;
  @override
  final bool? isImageExisted;
  @override
  @JsonKey()
  final String? imagePath;
  @override
  @JsonKey()
  final bool? spaceUpdated;

  @override
  String toString() {
    return 'EditSpaceState.attributesSelected(isLoading: $isLoading, group: $group, space: $space, rating: $rating, isImageExisted: $isImageExisted, imagePath: $imagePath, spaceUpdated: $spaceUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesSelectedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.space, space) || other.space == space) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isImageExisted, isImageExisted) ||
                other.isImageExisted == isImageExisted) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.spaceUpdated, spaceUpdated) ||
                other.spaceUpdated == spaceUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, group, space, rating,
      isImageExisted, imagePath, spaceUpdated);

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
    required TResult Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)
        attributesSelected,
    required TResult Function() spaceUpdated,
    required TResult Function(String message) error,
  }) {
    return attributesSelected(isLoading, group, space, rating, isImageExisted,
        imagePath, this.spaceUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)?
        attributesSelected,
    TResult? Function()? spaceUpdated,
    TResult? Function(String message)? error,
  }) {
    return attributesSelected?.call(isLoading, group, space, rating,
        isImageExisted, imagePath, this.spaceUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space, double? rating,
            bool? isImageExisted, String? imagePath, bool? spaceUpdated)?
        attributesSelected,
    TResult Function()? spaceUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (attributesSelected != null) {
      return attributesSelected(isLoading, group, space, rating, isImageExisted,
          imagePath, this.spaceUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceUpdatedState value) spaceUpdated,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return attributesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceUpdatedState value)? spaceUpdated,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return attributesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceUpdatedState value)? spaceUpdated,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (attributesSelected != null) {
      return attributesSelected(this);
    }
    return orElse();
  }
}

abstract class AttributesSelected implements EditSpaceState {
  const factory AttributesSelected(
      {final bool isLoading,
      final Group? group,
      final Space? space,
      final double? rating,
      final bool? isImageExisted,
      final String? imagePath,
      final bool? spaceUpdated}) = _$AttributesSelectedImpl;

  bool get isLoading;
  Group? get group;
  Space? get space;
  double? get rating;
  bool? get isImageExisted;
  String? get imagePath;
  bool? get spaceUpdated;
  @JsonKey(ignore: true)
  _$$AttributesSelectedImplCopyWith<_$AttributesSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpaceUpdatedStateImplCopyWith<$Res> {
  factory _$$SpaceUpdatedStateImplCopyWith(_$SpaceUpdatedStateImpl value,
          $Res Function(_$SpaceUpdatedStateImpl) then) =
      __$$SpaceUpdatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpaceUpdatedStateImplCopyWithImpl<$Res>
    extends _$EditSpaceStateCopyWithImpl<$Res, _$SpaceUpdatedStateImpl>
    implements _$$SpaceUpdatedStateImplCopyWith<$Res> {
  __$$SpaceUpdatedStateImplCopyWithImpl(_$SpaceUpdatedStateImpl _value,
      $Res Function(_$SpaceUpdatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpaceUpdatedStateImpl implements SpaceUpdatedState {
  const _$SpaceUpdatedStateImpl();

  @override
  String toString() {
    return 'EditSpaceState.spaceUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpaceUpdatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)
        attributesSelected,
    required TResult Function() spaceUpdated,
    required TResult Function(String message) error,
  }) {
    return spaceUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)?
        attributesSelected,
    TResult? Function()? spaceUpdated,
    TResult? Function(String message)? error,
  }) {
    return spaceUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space, double? rating,
            bool? isImageExisted, String? imagePath, bool? spaceUpdated)?
        attributesSelected,
    TResult Function()? spaceUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (spaceUpdated != null) {
      return spaceUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AttributesSelected value) attributesSelected,
    required TResult Function(SpaceUpdatedState value) spaceUpdated,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return spaceUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceUpdatedState value)? spaceUpdated,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return spaceUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceUpdatedState value)? spaceUpdated,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (spaceUpdated != null) {
      return spaceUpdated(this);
    }
    return orElse();
  }
}

abstract class SpaceUpdatedState implements EditSpaceState {
  const factory SpaceUpdatedState() = _$SpaceUpdatedStateImpl;
}

/// @nodoc
abstract class _$$EditSpaceErrorStateImplCopyWith<$Res> {
  factory _$$EditSpaceErrorStateImplCopyWith(_$EditSpaceErrorStateImpl value,
          $Res Function(_$EditSpaceErrorStateImpl) then) =
      __$$EditSpaceErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EditSpaceErrorStateImplCopyWithImpl<$Res>
    extends _$EditSpaceStateCopyWithImpl<$Res, _$EditSpaceErrorStateImpl>
    implements _$$EditSpaceErrorStateImplCopyWith<$Res> {
  __$$EditSpaceErrorStateImplCopyWithImpl(_$EditSpaceErrorStateImpl _value,
      $Res Function(_$EditSpaceErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EditSpaceErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditSpaceErrorStateImpl implements EditSpaceErrorState {
  const _$EditSpaceErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditSpaceState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSpaceErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSpaceErrorStateImplCopyWith<_$EditSpaceErrorStateImpl> get copyWith =>
      __$$EditSpaceErrorStateImplCopyWithImpl<_$EditSpaceErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)
        attributesSelected,
    required TResult Function() spaceUpdated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool isLoading,
            Group? group,
            Space? space,
            double? rating,
            bool? isImageExisted,
            String? imagePath,
            bool? spaceUpdated)?
        attributesSelected,
    TResult? Function()? spaceUpdated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space, double? rating,
            bool? isImageExisted, String? imagePath, bool? spaceUpdated)?
        attributesSelected,
    TResult Function()? spaceUpdated,
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
    required TResult Function(SpaceUpdatedState value) spaceUpdated,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AttributesSelected value)? attributesSelected,
    TResult? Function(SpaceUpdatedState value)? spaceUpdated,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AttributesSelected value)? attributesSelected,
    TResult Function(SpaceUpdatedState value)? spaceUpdated,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditSpaceErrorState implements EditSpaceState {
  const factory EditSpaceErrorState(final String message) =
      _$EditSpaceErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$EditSpaceErrorStateImplCopyWith<_$EditSpaceErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
