// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_List _$_$_ListFromJson(Map<String, dynamic> json) {
  return _$_List(
    (json['pizzas'] as List<dynamic>)
        .map((e) => Pizza.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ListToJson(_$_List instance) => <String, dynamic>{
      'pizzas': instance.pizzas,
    };
