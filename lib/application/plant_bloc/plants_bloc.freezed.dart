// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlants,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlantEvent value) getPlants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlantEvent value)? getPlants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlantEvent value)? getPlants,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsEventCopyWith<$Res> {
  factory $PlantsEventCopyWith(
          PlantsEvent value, $Res Function(PlantsEvent) then) =
      _$PlantsEventCopyWithImpl<$Res, PlantsEvent>;
}

/// @nodoc
class _$PlantsEventCopyWithImpl<$Res, $Val extends PlantsEvent>
    implements $PlantsEventCopyWith<$Res> {
  _$PlantsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPlantEventImplCopyWith<$Res> {
  factory _$$GetPlantEventImplCopyWith(
          _$GetPlantEventImpl value, $Res Function(_$GetPlantEventImpl) then) =
      __$$GetPlantEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlantEventImplCopyWithImpl<$Res>
    extends _$PlantsEventCopyWithImpl<$Res, _$GetPlantEventImpl>
    implements _$$GetPlantEventImplCopyWith<$Res> {
  __$$GetPlantEventImplCopyWithImpl(
      _$GetPlantEventImpl _value, $Res Function(_$GetPlantEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPlantEventImpl implements _GetPlantEvent {
  const _$GetPlantEventImpl();

  @override
  String toString() {
    return 'PlantsEvent.getPlants()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlantEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlants,
  }) {
    return getPlants();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlants,
  }) {
    return getPlants?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlants,
    required TResult orElse(),
  }) {
    if (getPlants != null) {
      return getPlants();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlantEvent value) getPlants,
  }) {
    return getPlants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlantEvent value)? getPlants,
  }) {
    return getPlants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlantEvent value)? getPlants,
    required TResult orElse(),
  }) {
    if (getPlants != null) {
      return getPlants(this);
    }
    return orElse();
  }
}

abstract class _GetPlantEvent implements PlantsEvent {
  const factory _GetPlantEvent() = _$GetPlantEventImpl;
}

/// @nodoc
mixin _$PlantsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlantModel> model) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlantModel> model)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlantModel> model)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlantsStateLoading value) loading,
    required TResult Function(_PlantsStateSuccess value) success,
    required TResult Function(_PlantsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlantsStateLoading value)? loading,
    TResult? Function(_PlantsStateSuccess value)? success,
    TResult? Function(_PlantsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlantsStateLoading value)? loading,
    TResult Function(_PlantsStateSuccess value)? success,
    TResult Function(_PlantsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantsStateCopyWith<$Res> {
  factory $PlantsStateCopyWith(
          PlantsState value, $Res Function(PlantsState) then) =
      _$PlantsStateCopyWithImpl<$Res, PlantsState>;
}

/// @nodoc
class _$PlantsStateCopyWithImpl<$Res, $Val extends PlantsState>
    implements $PlantsStateCopyWith<$Res> {
  _$PlantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlantsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PlantsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlantModel> model) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlantModel> model)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlantModel> model)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlantsStateLoading value) loading,
    required TResult Function(_PlantsStateSuccess value) success,
    required TResult Function(_PlantsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlantsStateLoading value)? loading,
    TResult? Function(_PlantsStateSuccess value)? success,
    TResult? Function(_PlantsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlantsStateLoading value)? loading,
    TResult Function(_PlantsStateSuccess value)? success,
    TResult Function(_PlantsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlantsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PlantsStateLoadingImplCopyWith<$Res> {
  factory _$$PlantsStateLoadingImplCopyWith(_$PlantsStateLoadingImpl value,
          $Res Function(_$PlantsStateLoadingImpl) then) =
      __$$PlantsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlantsStateLoadingImplCopyWithImpl<$Res>
    extends _$PlantsStateCopyWithImpl<$Res, _$PlantsStateLoadingImpl>
    implements _$$PlantsStateLoadingImplCopyWith<$Res> {
  __$$PlantsStateLoadingImplCopyWithImpl(_$PlantsStateLoadingImpl _value,
      $Res Function(_$PlantsStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlantsStateLoadingImpl implements _PlantsStateLoading {
  const _$PlantsStateLoadingImpl();

  @override
  String toString() {
    return 'PlantsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlantsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlantModel> model) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlantModel> model)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlantModel> model)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlantsStateLoading value) loading,
    required TResult Function(_PlantsStateSuccess value) success,
    required TResult Function(_PlantsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlantsStateLoading value)? loading,
    TResult? Function(_PlantsStateSuccess value)? success,
    TResult? Function(_PlantsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlantsStateLoading value)? loading,
    TResult Function(_PlantsStateSuccess value)? success,
    TResult Function(_PlantsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlantsStateLoading implements PlantsState {
  const factory _PlantsStateLoading() = _$PlantsStateLoadingImpl;
}

/// @nodoc
abstract class _$$PlantsStateSuccessImplCopyWith<$Res> {
  factory _$$PlantsStateSuccessImplCopyWith(_$PlantsStateSuccessImpl value,
          $Res Function(_$PlantsStateSuccessImpl) then) =
      __$$PlantsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlantModel> model});
}

/// @nodoc
class __$$PlantsStateSuccessImplCopyWithImpl<$Res>
    extends _$PlantsStateCopyWithImpl<$Res, _$PlantsStateSuccessImpl>
    implements _$$PlantsStateSuccessImplCopyWith<$Res> {
  __$$PlantsStateSuccessImplCopyWithImpl(_$PlantsStateSuccessImpl _value,
      $Res Function(_$PlantsStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PlantsStateSuccessImpl(
      null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<PlantModel>,
    ));
  }
}

/// @nodoc

class _$PlantsStateSuccessImpl implements _PlantsStateSuccess {
  const _$PlantsStateSuccessImpl(final List<PlantModel> model) : _model = model;

  final List<PlantModel> _model;
  @override
  List<PlantModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'PlantsState.success(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantsStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantsStateSuccessImplCopyWith<_$PlantsStateSuccessImpl> get copyWith =>
      __$$PlantsStateSuccessImplCopyWithImpl<_$PlantsStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlantModel> model) success,
    required TResult Function(String message) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlantModel> model)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlantModel> model)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlantsStateLoading value) loading,
    required TResult Function(_PlantsStateSuccess value) success,
    required TResult Function(_PlantsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlantsStateLoading value)? loading,
    TResult? Function(_PlantsStateSuccess value)? success,
    TResult? Function(_PlantsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlantsStateLoading value)? loading,
    TResult Function(_PlantsStateSuccess value)? success,
    TResult Function(_PlantsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PlantsStateSuccess implements PlantsState {
  const factory _PlantsStateSuccess(final List<PlantModel> model) =
      _$PlantsStateSuccessImpl;

  List<PlantModel> get model;

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantsStateSuccessImplCopyWith<_$PlantsStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlantsStateErrorImplCopyWith<$Res> {
  factory _$$PlantsStateErrorImplCopyWith(_$PlantsStateErrorImpl value,
          $Res Function(_$PlantsStateErrorImpl) then) =
      __$$PlantsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlantsStateErrorImplCopyWithImpl<$Res>
    extends _$PlantsStateCopyWithImpl<$Res, _$PlantsStateErrorImpl>
    implements _$$PlantsStateErrorImplCopyWith<$Res> {
  __$$PlantsStateErrorImplCopyWithImpl(_$PlantsStateErrorImpl _value,
      $Res Function(_$PlantsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PlantsStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlantsStateErrorImpl implements _PlantsStateError {
  const _$PlantsStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlantsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantsStateErrorImplCopyWith<_$PlantsStateErrorImpl> get copyWith =>
      __$$PlantsStateErrorImplCopyWithImpl<_$PlantsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlantModel> model) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlantModel> model)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlantModel> model)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlantsStateLoading value) loading,
    required TResult Function(_PlantsStateSuccess value) success,
    required TResult Function(_PlantsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlantsStateLoading value)? loading,
    TResult? Function(_PlantsStateSuccess value)? success,
    TResult? Function(_PlantsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlantsStateLoading value)? loading,
    TResult Function(_PlantsStateSuccess value)? success,
    TResult Function(_PlantsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PlantsStateError implements PlantsState {
  const factory _PlantsStateError(final String message) =
      _$PlantsStateErrorImpl;

  String get message;

  /// Create a copy of PlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantsStateErrorImplCopyWith<_$PlantsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
