// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pizza.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pizza _$PizzaFromJson(Map<String, dynamic> json) {
  return _Pizza.fromJson(json);
}

/// @nodoc
class _$PizzaTearOff {
  const _$PizzaTearOff();

  _Pizza call(
      {required int id,
      required String name,
      required String topping,
      required double price,
      required String imagePath,
      required int rating}) {
    return _Pizza(
      id: id,
      name: name,
      topping: topping,
      price: price,
      imagePath: imagePath,
      rating: rating,
    );
  }

  Pizza fromJson(Map<String, Object> json) {
    return Pizza.fromJson(json);
  }
}

/// @nodoc
const $Pizza = _$PizzaTearOff();

/// @nodoc
mixin _$Pizza {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get topping => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PizzaCopyWith<Pizza> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PizzaCopyWith<$Res> {
  factory $PizzaCopyWith(Pizza value, $Res Function(Pizza) then) =
      _$PizzaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String topping,
      double price,
      String imagePath,
      int rating});
}

/// @nodoc
class _$PizzaCopyWithImpl<$Res> implements $PizzaCopyWith<$Res> {
  _$PizzaCopyWithImpl(this._value, this._then);

  final Pizza _value;
  // ignore: unused_field
  final $Res Function(Pizza) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? topping = freezed,
    Object? price = freezed,
    Object? imagePath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topping: topping == freezed
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PizzaCopyWith<$Res> implements $PizzaCopyWith<$Res> {
  factory _$PizzaCopyWith(_Pizza value, $Res Function(_Pizza) then) =
      __$PizzaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String topping,
      double price,
      String imagePath,
      int rating});
}

/// @nodoc
class __$PizzaCopyWithImpl<$Res> extends _$PizzaCopyWithImpl<$Res>
    implements _$PizzaCopyWith<$Res> {
  __$PizzaCopyWithImpl(_Pizza _value, $Res Function(_Pizza) _then)
      : super(_value, (v) => _then(v as _Pizza));

  @override
  _Pizza get _value => super._value as _Pizza;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? topping = freezed,
    Object? price = freezed,
    Object? imagePath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Pizza(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topping: topping == freezed
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pizza implements _Pizza {
  const _$_Pizza(
      {required this.id,
      required this.name,
      required this.topping,
      required this.price,
      required this.imagePath,
      required this.rating});

  factory _$_Pizza.fromJson(Map<String, dynamic> json) =>
      _$_$_PizzaFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String topping;
  @override
  final double price;
  @override
  final String imagePath;
  @override
  final int rating;

  @override
  String toString() {
    return 'Pizza(id: $id, name: $name, topping: $topping, price: $price, imagePath: $imagePath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pizza &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.topping, topping) ||
                const DeepCollectionEquality()
                    .equals(other.topping, topping)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(topping) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$PizzaCopyWith<_Pizza> get copyWith =>
      __$PizzaCopyWithImpl<_Pizza>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PizzaToJson(this);
  }
}

abstract class _Pizza implements Pizza {
  const factory _Pizza(
      {required int id,
      required String name,
      required String topping,
      required double price,
      required String imagePath,
      required int rating}) = _$_Pizza;

  factory _Pizza.fromJson(Map<String, dynamic> json) = _$_Pizza.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get topping => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PizzaCopyWith<_Pizza> get copyWith => throw _privateConstructorUsedError;
}
