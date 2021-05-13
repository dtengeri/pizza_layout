import 'package:pizza_layout/bloc/pizza/model/pizza_list.dart';
import 'package:pizza_layout/bloc/pizza/pizza_api_client.dart';

class PizzaRepository {
  final PizzaApiClient pizzaApiClient;

  PizzaRepository(this.pizzaApiClient);

  Future<PizzaList> getPizzas() => pizzaApiClient.fetchPizzas();
}
