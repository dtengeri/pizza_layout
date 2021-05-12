import 'package:bloc/bloc.dart';
import 'package:pizza_layout/pizza.dart';

class CartItem {
  final Pizza pizza;
  final String size;
  final String crust;
  final String topping;

  CartItem({
    required this.pizza,
    required this.size,
    required this.crust,
    required this.topping,
  });
}

abstract class CartEvent {}

class AddItemToCartEvent extends CartEvent {
  final CartItem item;

  AddItemToCartEvent(this.item);
}

class CartBloc extends Bloc<CartEvent, List<CartItem>> {
  CartBloc() : super([]);

  @override
  Stream<List<CartItem>> mapEventToState(CartEvent event) async* {
    if (event is AddItemToCartEvent) {
      var items = List<CartItem>.from(state);
      items.add(event.item);
      yield items;
    }
  }
}
