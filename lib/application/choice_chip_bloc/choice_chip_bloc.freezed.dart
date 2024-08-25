// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_chip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChoiceChipEvent {
  int get size => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int size) sizeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int size)? sizeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int size)? sizeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SizeSelected value) sizeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SizeSelected value)? sizeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SizeSelected value)? sizeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChoiceChipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceChipEventCopyWith<ChoiceChipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceChipEventCopyWith<$Res> {
  factory $ChoiceChipEventCopyWith(
          ChoiceChipEvent value, $Res Function(ChoiceChipEvent) then) =
      _$ChoiceChipEventCopyWithImpl<$Res, ChoiceChipEvent>;
  @useResult
  $Res call({int size});
}

/// @nodoc
class _$ChoiceChipEventCopyWithImpl<$Res, $Val extends ChoiceChipEvent>
    implements $ChoiceChipEventCopyWith<$Res> {
  _$ChoiceChipEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceChipEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeSelectedImplCopyWith<$Res>
    implements $ChoiceChipEventCopyWith<$Res> {
  factory _$$SizeSelectedImplCopyWith(
          _$SizeSelectedImpl value, $Res Function(_$SizeSelectedImpl) then) =
      __$$SizeSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size});
}

/// @nodoc
class __$$SizeSelectedImplCopyWithImpl<$Res>
    extends _$ChoiceChipEventCopyWithImpl<$Res, _$SizeSelectedImpl>
    implements _$$SizeSelectedImplCopyWith<$Res> {
  __$$SizeSelectedImplCopyWithImpl(
      _$SizeSelectedImpl _value, $Res Function(_$SizeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceChipEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$SizeSelectedImpl(
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SizeSelectedImpl implements _SizeSelected {
  const _$SizeSelectedImpl(this.size);

  @override
  final int size;

  @override
  String toString() {
    return 'ChoiceChipEvent.sizeSelected(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeSelectedImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of ChoiceChipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeSelectedImplCopyWith<_$SizeSelectedImpl> get copyWith =>
      __$$SizeSelectedImplCopyWithImpl<_$SizeSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int size) sizeSelected,
  }) {
    return sizeSelected(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int size)? sizeSelected,
  }) {
    return sizeSelected?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int size)? sizeSelected,
    required TResult orElse(),
  }) {
    if (sizeSelected != null) {
      return sizeSelected(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SizeSelected value) sizeSelected,
  }) {
    return sizeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SizeSelected value)? sizeSelected,
  }) {
    return sizeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SizeSelected value)? sizeSelected,
    required TResult orElse(),
  }) {
    if (sizeSelected != null) {
      return sizeSelected(this);
    }
    return orElse();
  }
}

abstract class _SizeSelected implements ChoiceChipEvent {
  const factory _SizeSelected(final int size) = _$SizeSelectedImpl;

  @override
  int get size;

  /// Create a copy of ChoiceChipEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeSelectedImplCopyWith<_$SizeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChoiceChipState {
  int get selectedSize => throw _privateConstructorUsedError;

  /// Create a copy of ChoiceChipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceChipStateCopyWith<ChoiceChipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceChipStateCopyWith<$Res> {
  factory $ChoiceChipStateCopyWith(
          ChoiceChipState value, $Res Function(ChoiceChipState) then) =
      _$ChoiceChipStateCopyWithImpl<$Res, ChoiceChipState>;
  @useResult
  $Res call({int selectedSize});
}

/// @nodoc
class _$ChoiceChipStateCopyWithImpl<$Res, $Val extends ChoiceChipState>
    implements $ChoiceChipStateCopyWith<$Res> {
  _$ChoiceChipStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceChipState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSize = null,
  }) {
    return _then(_value.copyWith(
      selectedSize: null == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceChipStateImplCopyWith<$Res>
    implements $ChoiceChipStateCopyWith<$Res> {
  factory _$$ChoiceChipStateImplCopyWith(_$ChoiceChipStateImpl value,
          $Res Function(_$ChoiceChipStateImpl) then) =
      __$$ChoiceChipStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedSize});
}

/// @nodoc
class __$$ChoiceChipStateImplCopyWithImpl<$Res>
    extends _$ChoiceChipStateCopyWithImpl<$Res, _$ChoiceChipStateImpl>
    implements _$$ChoiceChipStateImplCopyWith<$Res> {
  __$$ChoiceChipStateImplCopyWithImpl(
      _$ChoiceChipStateImpl _value, $Res Function(_$ChoiceChipStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceChipState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSize = null,
  }) {
    return _then(_$ChoiceChipStateImpl(
      selectedSize: null == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChoiceChipStateImpl implements _ChoiceChipState {
  const _$ChoiceChipStateImpl({required this.selectedSize});

  @override
  final int selectedSize;

  @override
  String toString() {
    return 'ChoiceChipState(selectedSize: $selectedSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceChipStateImpl &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSize);

  /// Create a copy of ChoiceChipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceChipStateImplCopyWith<_$ChoiceChipStateImpl> get copyWith =>
      __$$ChoiceChipStateImplCopyWithImpl<_$ChoiceChipStateImpl>(
          this, _$identity);
}

abstract class _ChoiceChipState implements ChoiceChipState {
  const factory _ChoiceChipState({required final int selectedSize}) =
      _$ChoiceChipStateImpl;

  @override
  int get selectedSize;

  /// Create a copy of ChoiceChipState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceChipStateImplCopyWith<_$ChoiceChipStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
