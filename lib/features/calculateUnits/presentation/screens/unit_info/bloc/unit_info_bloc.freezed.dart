// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnitInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitInfoEventCopyWith<$Res> {
  factory $UnitInfoEventCopyWith(
          UnitInfoEvent value, $Res Function(UnitInfoEvent) then) =
      _$UnitInfoEventCopyWithImpl<$Res, UnitInfoEvent>;
}

/// @nodoc
class _$UnitInfoEventCopyWithImpl<$Res, $Val extends UnitInfoEvent>
    implements $UnitInfoEventCopyWith<$Res> {
  _$UnitInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UnitInfoEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UnitInfoEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UnitInfoEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$UnitInfoState {
  RequestState get requestState => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitInfoStateCopyWith<UnitInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitInfoStateCopyWith<$Res> {
  factory $UnitInfoStateCopyWith(
          UnitInfoState value, $Res Function(UnitInfoState) then) =
      _$UnitInfoStateCopyWithImpl<$Res, UnitInfoState>;
  @useResult
  $Res call({RequestState requestState, String? roomName, String errorMessage});
}

/// @nodoc
class _$UnitInfoStateCopyWithImpl<$Res, $Val extends UnitInfoState>
    implements $UnitInfoStateCopyWith<$Res> {
  _$UnitInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? roomName = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitInfoStateImplCopyWith<$Res>
    implements $UnitInfoStateCopyWith<$Res> {
  factory _$$UnitInfoStateImplCopyWith(
          _$UnitInfoStateImpl value, $Res Function(_$UnitInfoStateImpl) then) =
      __$$UnitInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState requestState, String? roomName, String errorMessage});
}

/// @nodoc
class __$$UnitInfoStateImplCopyWithImpl<$Res>
    extends _$UnitInfoStateCopyWithImpl<$Res, _$UnitInfoStateImpl>
    implements _$$UnitInfoStateImplCopyWith<$Res> {
  __$$UnitInfoStateImplCopyWithImpl(
      _$UnitInfoStateImpl _value, $Res Function(_$UnitInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? roomName = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$UnitInfoStateImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnitInfoStateImpl implements _UnitInfoState {
  const _$UnitInfoStateImpl(
      {this.requestState = RequestState.Init,
      this.roomName,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final RequestState requestState;
  @override
  final String? roomName;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'UnitInfoState(requestState: $requestState, roomName: $roomName, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitInfoStateImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestState, roomName, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitInfoStateImplCopyWith<_$UnitInfoStateImpl> get copyWith =>
      __$$UnitInfoStateImplCopyWithImpl<_$UnitInfoStateImpl>(this, _$identity);
}

abstract class _UnitInfoState implements UnitInfoState {
  const factory _UnitInfoState(
      {final RequestState requestState,
      final String? roomName,
      final String errorMessage}) = _$UnitInfoStateImpl;

  @override
  RequestState get requestState;
  @override
  String? get roomName;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$UnitInfoStateImplCopyWith<_$UnitInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
