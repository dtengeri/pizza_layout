import 'package:freezed_annotation/freezed_annotation.dart';

part 'pizza_event.freezed.dart';

@freezed
abstract class PizzaEvent with _$PizzaEvent {
  PizzaEvent._();
  factory PizzaEvent() = _PizzaEvent;
}

@freezed
class PizzaListRequested extends PizzaEvent with _$PizzaListRequested {
  factory PizzaListRequested() = _PizzaListRequested;
}
