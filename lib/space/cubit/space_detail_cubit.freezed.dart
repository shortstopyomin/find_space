// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpaceDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isLoading, Group? group, Space? space)
        spaceDetailLoaded,
    required TResult Function() spaceDeleted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult? Function()? spaceDeleted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult Function()? spaceDeleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SpaceDetailLoaded value) spaceDetailLoaded,
    required TResult Function(SpaceDeletedState value) spaceDeleted,
    required TResult Function(EditSpaceErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult? Function(SpaceDeletedState value)? spaceDeleted,
    TResult? Function(EditSpaceErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult Function(SpaceDeletedState value)? spaceDeleted,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceDetailStateCopyWith<$Res> {
  factory $SpaceDetailStateCopyWith(
          SpaceDetailState value, $Res Function(SpaceDetailState) then) =
      _$SpaceDetailStateCopyWithImpl<$Res, SpaceDetailState>;
}

/// @nodoc
class _$SpaceDetailStateCopyWithImpl<$Res, $Val extends SpaceDetailState>
    implements $SpaceDetailStateCopyWith<$Res> {
  _$SpaceDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$SpaceDetailStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'SpaceDetailState.loading()';
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
    required TResult Function(bool isLoading, Group? group, Space? space)
        spaceDetailLoaded,
    required TResult Function() spaceDeleted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult? Function()? spaceDeleted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult Function()? spaceDeleted,
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
    required TResult Function(SpaceDetailLoaded value) spaceDetailLoaded,
    required TResult Function(SpaceDeletedState value) spaceDeleted,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult? Function(SpaceDeletedState value)? spaceDeleted,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult Function(SpaceDeletedState value)? spaceDeleted,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements SpaceDetailState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SpaceDetailLoadedImplCopyWith<$Res> {
  factory _$$SpaceDetailLoadedImplCopyWith(_$SpaceDetailLoadedImpl value,
          $Res Function(_$SpaceDetailLoadedImpl) then) =
      __$$SpaceDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, Group? group, Space? space});

  $GroupCopyWith<$Res>? get group;
  $SpaceCopyWith<$Res>? get space;
}

/// @nodoc
class __$$SpaceDetailLoadedImplCopyWithImpl<$Res>
    extends _$SpaceDetailStateCopyWithImpl<$Res, _$SpaceDetailLoadedImpl>
    implements _$$SpaceDetailLoadedImplCopyWith<$Res> {
  __$$SpaceDetailLoadedImplCopyWithImpl(_$SpaceDetailLoadedImpl _value,
      $Res Function(_$SpaceDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? group = freezed,
    Object? space = freezed,
  }) {
    return _then(_$SpaceDetailLoadedImpl(
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

class _$SpaceDetailLoadedImpl implements SpaceDetailLoaded {
  const _$SpaceDetailLoadedImpl(
      {this.isLoading = false, this.group, this.space});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Group? group;
  @override
  final Space? space;

  @override
  String toString() {
    return 'SpaceDetailState.spaceDetailLoaded(isLoading: $isLoading, group: $group, space: $space)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceDetailLoadedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.space, space) || other.space == space));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, group, space);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceDetailLoadedImplCopyWith<_$SpaceDetailLoadedImpl> get copyWith =>
      __$$SpaceDetailLoadedImplCopyWithImpl<_$SpaceDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isLoading, Group? group, Space? space)
        spaceDetailLoaded,
    required TResult Function() spaceDeleted,
    required TResult Function(String message) error,
  }) {
    return spaceDetailLoaded(isLoading, group, space);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult? Function()? spaceDeleted,
    TResult? Function(String message)? error,
  }) {
    return spaceDetailLoaded?.call(isLoading, group, space);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult Function()? spaceDeleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (spaceDetailLoaded != null) {
      return spaceDetailLoaded(isLoading, group, space);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SpaceDetailLoaded value) spaceDetailLoaded,
    required TResult Function(SpaceDeletedState value) spaceDeleted,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return spaceDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult? Function(SpaceDeletedState value)? spaceDeleted,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return spaceDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult Function(SpaceDeletedState value)? spaceDeleted,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (spaceDetailLoaded != null) {
      return spaceDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class SpaceDetailLoaded implements SpaceDetailState {
  const factory SpaceDetailLoaded(
      {final bool isLoading,
      final Group? group,
      final Space? space}) = _$SpaceDetailLoadedImpl;

  bool get isLoading;
  Group? get group;
  Space? get space;
  @JsonKey(ignore: true)
  _$$SpaceDetailLoadedImplCopyWith<_$SpaceDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpaceDeletedStateImplCopyWith<$Res> {
  factory _$$SpaceDeletedStateImplCopyWith(_$SpaceDeletedStateImpl value,
          $Res Function(_$SpaceDeletedStateImpl) then) =
      __$$SpaceDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpaceDeletedStateImplCopyWithImpl<$Res>
    extends _$SpaceDetailStateCopyWithImpl<$Res, _$SpaceDeletedStateImpl>
    implements _$$SpaceDeletedStateImplCopyWith<$Res> {
  __$$SpaceDeletedStateImplCopyWithImpl(_$SpaceDeletedStateImpl _value,
      $Res Function(_$SpaceDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpaceDeletedStateImpl implements SpaceDeletedState {
  const _$SpaceDeletedStateImpl();

  @override
  String toString() {
    return 'SpaceDetailState.spaceDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpaceDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isLoading, Group? group, Space? space)
        spaceDetailLoaded,
    required TResult Function() spaceDeleted,
    required TResult Function(String message) error,
  }) {
    return spaceDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult? Function()? spaceDeleted,
    TResult? Function(String message)? error,
  }) {
    return spaceDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult Function()? spaceDeleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (spaceDeleted != null) {
      return spaceDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SpaceDetailLoaded value) spaceDetailLoaded,
    required TResult Function(SpaceDeletedState value) spaceDeleted,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return spaceDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult? Function(SpaceDeletedState value)? spaceDeleted,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return spaceDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult Function(SpaceDeletedState value)? spaceDeleted,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (spaceDeleted != null) {
      return spaceDeleted(this);
    }
    return orElse();
  }
}

abstract class SpaceDeletedState implements SpaceDetailState {
  const factory SpaceDeletedState() = _$SpaceDeletedStateImpl;
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
    extends _$SpaceDetailStateCopyWithImpl<$Res, _$EditSpaceErrorStateImpl>
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
    return 'SpaceDetailState.error(message: $message)';
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
    required TResult Function(bool isLoading, Group? group, Space? space)
        spaceDetailLoaded,
    required TResult Function() spaceDeleted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult? Function()? spaceDeleted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isLoading, Group? group, Space? space)?
        spaceDetailLoaded,
    TResult Function()? spaceDeleted,
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
    required TResult Function(SpaceDetailLoaded value) spaceDetailLoaded,
    required TResult Function(SpaceDeletedState value) spaceDeleted,
    required TResult Function(EditSpaceErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult? Function(SpaceDeletedState value)? spaceDeleted,
    TResult? Function(EditSpaceErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SpaceDetailLoaded value)? spaceDetailLoaded,
    TResult Function(SpaceDeletedState value)? spaceDeleted,
    TResult Function(EditSpaceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditSpaceErrorState implements SpaceDetailState {
  const factory EditSpaceErrorState(final String message) =
      _$EditSpaceErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$EditSpaceErrorStateImplCopyWith<_$EditSpaceErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
