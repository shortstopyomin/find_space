// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spaces_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpacesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isLoading, List<Group>? groups,
            List<Space>? spaces, int? selectedGroupId)
        groupsSpacesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpacesInitial value) initial,
    required TResult Function(SpacesLoading value) loading,
    required TResult Function(GroupSpacesLoaded value) groupsSpacesLoaded,
    required TResult Function(SpacesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpacesInitial value)? initial,
    TResult? Function(SpacesLoading value)? loading,
    TResult? Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult? Function(SpacesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpacesInitial value)? initial,
    TResult Function(SpacesLoading value)? loading,
    TResult Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult Function(SpacesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacesStateCopyWith<$Res> {
  factory $SpacesStateCopyWith(
          SpacesState value, $Res Function(SpacesState) then) =
      _$SpacesStateCopyWithImpl<$Res, SpacesState>;
}

/// @nodoc
class _$SpacesStateCopyWithImpl<$Res, $Val extends SpacesState>
    implements $SpacesStateCopyWith<$Res> {
  _$SpacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpacesInitialImplCopyWith<$Res> {
  factory _$$SpacesInitialImplCopyWith(
          _$SpacesInitialImpl value, $Res Function(_$SpacesInitialImpl) then) =
      __$$SpacesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpacesInitialImplCopyWithImpl<$Res>
    extends _$SpacesStateCopyWithImpl<$Res, _$SpacesInitialImpl>
    implements _$$SpacesInitialImplCopyWith<$Res> {
  __$$SpacesInitialImplCopyWithImpl(
      _$SpacesInitialImpl _value, $Res Function(_$SpacesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpacesInitialImpl implements SpacesInitial {
  const _$SpacesInitialImpl();

  @override
  String toString() {
    return 'SpacesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpacesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isLoading, List<Group>? groups,
            List<Space>? spaces, int? selectedGroupId)
        groupsSpacesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpacesInitial value) initial,
    required TResult Function(SpacesLoading value) loading,
    required TResult Function(GroupSpacesLoaded value) groupsSpacesLoaded,
    required TResult Function(SpacesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpacesInitial value)? initial,
    TResult? Function(SpacesLoading value)? loading,
    TResult? Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult? Function(SpacesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpacesInitial value)? initial,
    TResult Function(SpacesLoading value)? loading,
    TResult Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult Function(SpacesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SpacesInitial implements SpacesState {
  const factory SpacesInitial() = _$SpacesInitialImpl;
}

/// @nodoc
abstract class _$$SpacesLoadingImplCopyWith<$Res> {
  factory _$$SpacesLoadingImplCopyWith(
          _$SpacesLoadingImpl value, $Res Function(_$SpacesLoadingImpl) then) =
      __$$SpacesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpacesLoadingImplCopyWithImpl<$Res>
    extends _$SpacesStateCopyWithImpl<$Res, _$SpacesLoadingImpl>
    implements _$$SpacesLoadingImplCopyWith<$Res> {
  __$$SpacesLoadingImplCopyWithImpl(
      _$SpacesLoadingImpl _value, $Res Function(_$SpacesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpacesLoadingImpl implements SpacesLoading {
  const _$SpacesLoadingImpl();

  @override
  String toString() {
    return 'SpacesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpacesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isLoading, List<Group>? groups,
            List<Space>? spaces, int? selectedGroupId)
        groupsSpacesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
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
    required TResult Function(SpacesInitial value) initial,
    required TResult Function(SpacesLoading value) loading,
    required TResult Function(GroupSpacesLoaded value) groupsSpacesLoaded,
    required TResult Function(SpacesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpacesInitial value)? initial,
    TResult? Function(SpacesLoading value)? loading,
    TResult? Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult? Function(SpacesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpacesInitial value)? initial,
    TResult Function(SpacesLoading value)? loading,
    TResult Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult Function(SpacesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SpacesLoading implements SpacesState {
  const factory SpacesLoading() = _$SpacesLoadingImpl;
}

/// @nodoc
abstract class _$$GroupSpacesLoadedImplCopyWith<$Res> {
  factory _$$GroupSpacesLoadedImplCopyWith(_$GroupSpacesLoadedImpl value,
          $Res Function(_$GroupSpacesLoadedImpl) then) =
      __$$GroupSpacesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Group>? groups,
      List<Space>? spaces,
      int? selectedGroupId});
}

/// @nodoc
class __$$GroupSpacesLoadedImplCopyWithImpl<$Res>
    extends _$SpacesStateCopyWithImpl<$Res, _$GroupSpacesLoadedImpl>
    implements _$$GroupSpacesLoadedImplCopyWith<$Res> {
  __$$GroupSpacesLoadedImplCopyWithImpl(_$GroupSpacesLoadedImpl _value,
      $Res Function(_$GroupSpacesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? groups = freezed,
    Object? spaces = freezed,
    Object? selectedGroupId = freezed,
  }) {
    return _then(_$GroupSpacesLoadedImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      spaces: freezed == spaces
          ? _value._spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<Space>?,
      selectedGroupId: freezed == selectedGroupId
          ? _value.selectedGroupId
          : selectedGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GroupSpacesLoadedImpl implements GroupSpacesLoaded {
  const _$GroupSpacesLoadedImpl(
      {this.isLoading = false,
      final List<Group>? groups,
      final List<Space>? spaces,
      this.selectedGroupId})
      : _groups = groups,
        _spaces = spaces;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Group>? _groups;
  @override
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Space>? _spaces;
  @override
  List<Space>? get spaces {
    final value = _spaces;
    if (value == null) return null;
    if (_spaces is EqualUnmodifiableListView) return _spaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? selectedGroupId;

  @override
  String toString() {
    return 'SpacesState.groupsSpacesLoaded(isLoading: $isLoading, groups: $groups, spaces: $spaces, selectedGroupId: $selectedGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSpacesLoadedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._spaces, _spaces) &&
            (identical(other.selectedGroupId, selectedGroupId) ||
                other.selectedGroupId == selectedGroupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_spaces),
      selectedGroupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSpacesLoadedImplCopyWith<_$GroupSpacesLoadedImpl> get copyWith =>
      __$$GroupSpacesLoadedImplCopyWithImpl<_$GroupSpacesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isLoading, List<Group>? groups,
            List<Space>? spaces, int? selectedGroupId)
        groupsSpacesLoaded,
    required TResult Function(String message) error,
  }) {
    return groupsSpacesLoaded(isLoading, groups, spaces, selectedGroupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult? Function(String message)? error,
  }) {
    return groupsSpacesLoaded?.call(isLoading, groups, spaces, selectedGroupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (groupsSpacesLoaded != null) {
      return groupsSpacesLoaded(isLoading, groups, spaces, selectedGroupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpacesInitial value) initial,
    required TResult Function(SpacesLoading value) loading,
    required TResult Function(GroupSpacesLoaded value) groupsSpacesLoaded,
    required TResult Function(SpacesError value) error,
  }) {
    return groupsSpacesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpacesInitial value)? initial,
    TResult? Function(SpacesLoading value)? loading,
    TResult? Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult? Function(SpacesError value)? error,
  }) {
    return groupsSpacesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpacesInitial value)? initial,
    TResult Function(SpacesLoading value)? loading,
    TResult Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult Function(SpacesError value)? error,
    required TResult orElse(),
  }) {
    if (groupsSpacesLoaded != null) {
      return groupsSpacesLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupSpacesLoaded implements SpacesState {
  const factory GroupSpacesLoaded(
      {final bool isLoading,
      final List<Group>? groups,
      final List<Space>? spaces,
      final int? selectedGroupId}) = _$GroupSpacesLoadedImpl;

  bool get isLoading;
  List<Group>? get groups;
  List<Space>? get spaces;
  int? get selectedGroupId;
  @JsonKey(ignore: true)
  _$$GroupSpacesLoadedImplCopyWith<_$GroupSpacesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpacesErrorImplCopyWith<$Res> {
  factory _$$SpacesErrorImplCopyWith(
          _$SpacesErrorImpl value, $Res Function(_$SpacesErrorImpl) then) =
      __$$SpacesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SpacesErrorImplCopyWithImpl<$Res>
    extends _$SpacesStateCopyWithImpl<$Res, _$SpacesErrorImpl>
    implements _$$SpacesErrorImplCopyWith<$Res> {
  __$$SpacesErrorImplCopyWithImpl(
      _$SpacesErrorImpl _value, $Res Function(_$SpacesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SpacesErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpacesErrorImpl implements SpacesError {
  const _$SpacesErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SpacesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpacesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpacesErrorImplCopyWith<_$SpacesErrorImpl> get copyWith =>
      __$$SpacesErrorImplCopyWithImpl<_$SpacesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isLoading, List<Group>? groups,
            List<Space>? spaces, int? selectedGroupId)
        groupsSpacesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isLoading, List<Group>? groups, List<Space>? spaces,
            int? selectedGroupId)?
        groupsSpacesLoaded,
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
    required TResult Function(SpacesInitial value) initial,
    required TResult Function(SpacesLoading value) loading,
    required TResult Function(GroupSpacesLoaded value) groupsSpacesLoaded,
    required TResult Function(SpacesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpacesInitial value)? initial,
    TResult? Function(SpacesLoading value)? loading,
    TResult? Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult? Function(SpacesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpacesInitial value)? initial,
    TResult Function(SpacesLoading value)? loading,
    TResult Function(GroupSpacesLoaded value)? groupsSpacesLoaded,
    TResult Function(SpacesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SpacesError implements SpacesState {
  const factory SpacesError(final String message) = _$SpacesErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SpacesErrorImplCopyWith<_$SpacesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
