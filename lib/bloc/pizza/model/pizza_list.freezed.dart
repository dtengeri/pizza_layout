// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pizza_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PizzaList _$PizzaListFromJson(Map<String, dynamic> json) {
  return _List.fromJson(json);
}

/// @nodoc
class _$PizzaListTearOff {
  const _$PizzaListTearOff();

  _List call(List<Pizza> pizzas) {
    return _List(
      pizzas,
    );
  }

  PizzaList fromJson(Map<String, Object> json) {
    return PizzaList.fromJson(json);
  }
}

/// @nodoc
const $PizzaList = _$PizzaListTearOff();

/// @nodoc
mixin _$PizzaList {
  List<Pizza> get pizzas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PizzaListCopyWith<PizzaList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PizzaListCopyWith<$Res> {
  factory $PizzaListCopyWith(PizzaList value, $Res Function(PizzaList) then) =
      _$PizzaListCopyWithImpl<$Res>;
  $Res call({List<Pizza> pizzas});
}

/// @nodoc
class _$PizzaListCopyWithImpl<$Res> implements $PizzaListCopyWith<$Res> {
  _$PizzaListCopyWithImpl(this._value, this._then);

  final PizzaList _value;
  // ignore: unused_field
  final $Res Function(PizzaList) _then;

  @override
  $Res call({
    Object? pizzas = freezed,
  }) {
    return _then(_value.copyWith(
      pizzas: pizzas == freezed
          ? _value.pizzas
          : pizzas // ignore: cast_nullable_to_non_nullable
              as List<Pizza>,
    ));
  }
}

/// @nodoc
abstract class _$ListCopyWith<$Res> implements $PizzaListCopyWith<$Res> {
  factory _$ListCopyWith(_List value, $Res Function(_List) then) =
      __$ListCopyWithImpl<$Res>;
  @override
  $Res call({List<Pizza> pizzas});
}

/// @nodoc
class __$ListCopyWithImpl<$Res> extends _$PizzaListCopyWithImpl<$Res>
    implements _$ListCopyWith<$Res> {
  __$ListCopyWithImpl(_List _value, $Res Function(_List) _then)
      : super(_value, (v) => _then(v as _List));

  @override
  _List get _value => super._value as _List;

  @override
  $Res call({
    Object? pizzas = freezed,
  }) {
    return _then(_List(
      pizzas == freezed
          ? _value.pizzas
          : pizzas // ignore: cast_nullable_to_non_nullable
              as List<Pizza>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_List implements _List {
  const _$_List(this.pizzas);

  factory _$_List.fromJson(Map<String, dynamic> json) =>
      _$_$_ListFromJson(json);

  @override
  final List<Pizza> pizzas;

  @override
  String toString() {
    return 'PizzaList(pizzas: $pizzas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _List &&
            (identical(other.pizzas, pizzas) ||
                const DeepCollectionEquality().equals(other.pizzas, pizzas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pizzas);

  @JsonKey(ignore: true)
  @override
  _$ListCopyWith<_List> get copyWith =>
      __$ListCopyWithImpl<_List>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListToJson(this);
  }
}

abstract class _List implements PizzaList {
  const factory _List(List<Pizza> pizzas) = _$_List;

  factory _List.fromJson(Map<String, dynamic> json) = _$_List.fromJson;

  @override
  List<Pizza> get pizzas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListCopyWith<_List> get copyWith => throw _privateConstructorUsedError;
}
