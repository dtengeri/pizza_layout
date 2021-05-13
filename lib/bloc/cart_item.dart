import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pizza_layout/pizza.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem({
    required Pizza pizza,
    required String size,
    required String crust,
    required String topping,
  }) = _CartItem;
}
