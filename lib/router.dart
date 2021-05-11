import 'package:fluro/fluro.dart';
import 'package:pizza_layout/home.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/pizza_details.dart';

final homeHandler = Handler(handlerFunc: (context, params) => Home());
final pizzaDetailsHandler = Handler(handlerFunc: (context, params) {
  return PizzaDetails(
    pizza: PIZZAS[int.parse(params['id']![0])],
  );
});

void defineRoutes(FluroRouter router) {
  router.define('/', handler: homeHandler);
  router.define('/pizza/:id', handler: pizzaDetailsHandler);
}
