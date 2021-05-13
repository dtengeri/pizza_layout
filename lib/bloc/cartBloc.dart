import 'package:bloc/bloc.dart';
import 'package:pizza_layout/bloc/cart_item.dart';

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
