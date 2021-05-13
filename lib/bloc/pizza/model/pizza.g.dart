// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pizza _$_$_PizzaFromJson(Map<String, dynamic> json) {
  return _$_Pizza(
    id: json['id'] as int,
    name: json['name'] as String,
    topping: json['topping'] as String,
    price: (json['price'] as num).toDouble(),
    imagePath: json['imagePath'] as String,
    rating: json['rating'] as int,
  );
}

Map<String, dynamic> _$_$_PizzaToJson(_$_Pizza instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'topping': instance.topping,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'rating': instance.rating,
    };
