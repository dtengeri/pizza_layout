// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call(
      {required Pizza pizza,
      required String size,
      required String crust,
      required String topping}) {
    return _CartItem(
      pizza: pizza,
      size: size,
      crust: crust,
      topping: topping,
    );
  }
}

/// @nodoc
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  Pizza get pizza => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get crust => throw _privateConstructorUsedError;
  String get topping => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({Pizza pizza, String size, String crust, String topping});

  $PizzaCopyWith<$Res> get pizza;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object? pizza = freezed,
    Object? size = freezed,
    Object? crust = freezed,
    Object? topping = freezed,
  }) {
    return _then(_value.copyWith(
      pizza: pizza == freezed
          ? _value.pizza
          : pizza // ignore: cast_nullable_to_non_nullable
              as Pizza,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      crust: crust == freezed
          ? _value.crust
          : crust // ignore: cast_nullable_to_non_nullable
              as String,
      topping: topping == freezed
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PizzaCopyWith<$Res> get pizza {
    return $PizzaCopyWith<$Res>(_value.pizza, (value) {
      return _then(_value.copyWith(pizza: value));
    });
  }
}

/// @nodoc
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call({Pizza pizza, String size, String crust, String topping});

  @override
  $PizzaCopyWith<$Res> get pizza;
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object? pizza = freezed,
    Object? size = freezed,
    Object? crust = freezed,
    Object? topping = freezed,
  }) {
    return _then(_CartItem(
      pizza: pizza == freezed
          ? _value.pizza
          : pizza // ignore: cast_nullable_to_non_nullable
              as Pizza,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      crust: crust == freezed
          ? _value.crust
          : crust // ignore: cast_nullable_to_non_nullable
              as String,
      topping: topping == freezed
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartItem implements _CartItem {
  _$_CartItem(
      {required this.pizza,
      required this.size,
      required this.crust,
      required this.topping});

  @override
  final Pizza pizza;
  @override
  final String size;
  @override
  final String crust;
  @override
  final String topping;

  @override
  String toString() {
    return 'CartItem(pizza: $pizza, size: $size, crust: $crust, topping: $topping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItem &&
            (identical(other.pizza, pizza) ||
                const DeepCollectionEquality().equals(other.pizza, pizza)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.crust, crust) ||
                const DeepCollectionEquality().equals(other.crust, crust)) &&
            (identical(other.topping, topping) ||
                const DeepCollectionEquality().equals(other.topping, topping)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pizza) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(crust) ^
      const DeepCollectionEquality().hash(topping);

  @JsonKey(ignore: true)
  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);
}

abstract class _CartItem implements CartItem {
  factory _CartItem(
      {required Pizza pizza,
      required String size,
      required String crust,
      required String topping}) = _$_CartItem;

  @override
  Pizza get pizza => throw _privateConstructorUsedError;
  @override
  String get size => throw _privateConstructorUsedError;
  @override
  String get crust => throw _privateConstructorUsedError;
  @override
  String get topping => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemCopyWith<_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
