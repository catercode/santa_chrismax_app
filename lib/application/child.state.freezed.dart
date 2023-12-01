// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChildState {
  AsyncValue<List<dynamic>> get children => throw _privateConstructorUsedError;
  List<ChildModel> get filteredTodo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildStateCopyWith<ChildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildStateCopyWith<$Res> {
  factory $ChildStateCopyWith(
          ChildState value, $Res Function(ChildState) then) =
      _$ChildStateCopyWithImpl<$Res, ChildState>;
  @useResult
  $Res call(
      {AsyncValue<List<dynamic>> children,
      List<ChildModel> filteredTodo,
      bool isLoading,
      bool isSuccess,
      bool status});
}

/// @nodoc
class _$ChildStateCopyWithImpl<$Res, $Val extends ChildState>
    implements $ChildStateCopyWith<$Res> {
  _$ChildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? filteredTodo = null,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<dynamic>>,
      filteredTodo: null == filteredTodo
          ? _value.filteredTodo
          : filteredTodo // ignore: cast_nullable_to_non_nullable
              as List<ChildModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildStateImplCopyWith<$Res>
    implements $ChildStateCopyWith<$Res> {
  factory _$$ChildStateImplCopyWith(
          _$ChildStateImpl value, $Res Function(_$ChildStateImpl) then) =
      __$$ChildStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<dynamic>> children,
      List<ChildModel> filteredTodo,
      bool isLoading,
      bool isSuccess,
      bool status});
}

/// @nodoc
class __$$ChildStateImplCopyWithImpl<$Res>
    extends _$ChildStateCopyWithImpl<$Res, _$ChildStateImpl>
    implements _$$ChildStateImplCopyWith<$Res> {
  __$$ChildStateImplCopyWithImpl(
      _$ChildStateImpl _value, $Res Function(_$ChildStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? filteredTodo = null,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? status = null,
  }) {
    return _then(_$ChildStateImpl(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<dynamic>>,
      filteredTodo: null == filteredTodo
          ? _value._filteredTodo
          : filteredTodo // ignore: cast_nullable_to_non_nullable
              as List<ChildModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChildStateImpl implements _ChildState {
  const _$ChildStateImpl(
      {this.children = const AsyncData([]),
      final List<ChildModel> filteredTodo = const [],
      this.isLoading = false,
      this.isSuccess = false,
      this.status = false})
      : _filteredTodo = filteredTodo;

  @override
  @JsonKey()
  final AsyncValue<List<dynamic>> children;
  final List<ChildModel> _filteredTodo;
  @override
  @JsonKey()
  List<ChildModel> get filteredTodo {
    if (_filteredTodo is EqualUnmodifiableListView) return _filteredTodo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTodo);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool status;

  @override
  String toString() {
    return 'ChildState(children: $children, filteredTodo: $filteredTodo, isLoading: $isLoading, isSuccess: $isSuccess, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildStateImpl &&
            (identical(other.children, children) ||
                other.children == children) &&
            const DeepCollectionEquality()
                .equals(other._filteredTodo, _filteredTodo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      children,
      const DeepCollectionEquality().hash(_filteredTodo),
      isLoading,
      isSuccess,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildStateImplCopyWith<_$ChildStateImpl> get copyWith =>
      __$$ChildStateImplCopyWithImpl<_$ChildStateImpl>(this, _$identity);
}

abstract class _ChildState implements ChildState {
  const factory _ChildState(
      {final AsyncValue<List<dynamic>> children,
      final List<ChildModel> filteredTodo,
      final bool isLoading,
      final bool isSuccess,
      final bool status}) = _$ChildStateImpl;

  @override
  AsyncValue<List<dynamic>> get children;
  @override
  List<ChildModel> get filteredTodo;
  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$ChildStateImplCopyWith<_$ChildStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
