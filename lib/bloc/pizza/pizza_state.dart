import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza_list.dart';

part 'pizza_state.freezed.dart';

@freezed
class PizzaState with _$PizzaState {
  factory PizzaState(PizzaList pizzas) = Data;
  factory PizzaState.initial() = Initital;
  factory PizzaState.loading() = Loading;
  factory PizzaState.error([String? message]) = ErrorDetails;
}
