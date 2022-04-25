// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vending_machine_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VendingMachineState {
  int get coinBalance => throw _privateConstructorUsedError;
  int get coinReturn => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int coinBalance, int coinReturn) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int coinBalance, int coinReturn)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int coinBalance, int coinReturn)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendingMachineStateCopyWith<VendingMachineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendingMachineStateCopyWith<$Res> {
  factory $VendingMachineStateCopyWith(
          VendingMachineState value, $Res Function(VendingMachineState) then) =
      _$VendingMachineStateCopyWithImpl<$Res>;
  $Res call({int coinBalance, int coinReturn});
}

/// @nodoc
class _$VendingMachineStateCopyWithImpl<$Res>
    implements $VendingMachineStateCopyWith<$Res> {
  _$VendingMachineStateCopyWithImpl(this._value, this._then);

  final VendingMachineState _value;
  // ignore: unused_field
  final $Res Function(VendingMachineState) _then;

  @override
  $Res call({
    Object? coinBalance = freezed,
    Object? coinReturn = freezed,
  }) {
    return _then(_value.copyWith(
      coinBalance: coinBalance == freezed
          ? _value.coinBalance
          : coinBalance // ignore: cast_nullable_to_non_nullable
              as int,
      coinReturn: coinReturn == freezed
          ? _value.coinReturn
          : coinReturn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $VendingMachineStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({int coinBalance, int coinReturn});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$VendingMachineStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? coinBalance = freezed,
    Object? coinReturn = freezed,
  }) {
    return _then(_Initial(
      coinBalance: coinBalance == freezed
          ? _value.coinBalance
          : coinBalance // ignore: cast_nullable_to_non_nullable
              as int,
      coinReturn: coinReturn == freezed
          ? _value.coinReturn
          : coinReturn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.coinBalance, required this.coinReturn});

  @override
  final int coinBalance;
  @override
  final int coinReturn;

  @override
  String toString() {
    return 'VendingMachineState.initial(coinBalance: $coinBalance, coinReturn: $coinReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.coinBalance, coinBalance) &&
            const DeepCollectionEquality()
                .equals(other.coinReturn, coinReturn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coinBalance),
      const DeepCollectionEquality().hash(coinReturn));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int coinBalance, int coinReturn) initial,
  }) {
    return initial(coinBalance, coinReturn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int coinBalance, int coinReturn)? initial,
  }) {
    return initial?.call(coinBalance, coinReturn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int coinBalance, int coinReturn)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(coinBalance, coinReturn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VendingMachineState {
  const factory _Initial(
      {required final int coinBalance,
      required final int coinReturn}) = _$_Initial;

  @override
  int get coinBalance => throw _privateConstructorUsedError;
  @override
  int get coinReturn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
