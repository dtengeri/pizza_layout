import 'package:dio/dio.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza_list.dart';

class PizzaApiClient {
  static const pizzasUrl = 'https://jsonkeeper.com/b/PHXO';

  final Dio httpClient;

  PizzaApiClient(this.httpClient);

  Future<PizzaList> fetchPizzas() async {
    var response = await httpClient.get<Map<String, dynamic>>(pizzasUrl);
    return PizzaList.fromJson(response.data!);
  }
}
