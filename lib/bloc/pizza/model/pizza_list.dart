import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';

part 'pizza_list.freezed.dart';
part 'pizza_list.g.dart';

@freezed
class PizzaList with _$PizzaList {
  const factory PizzaList(List<Pizza> pizzas) = _List;

  factory PizzaList.fromJson(Map<String, dynamic> json) =>
      _$PizzaListFromJson(json);
}
