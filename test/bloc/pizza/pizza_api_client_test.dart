import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/bloc/pizza/pizza_api_client.dart';
import 'package:test/test.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('PizzaApiClient', () {
    final httpClient = MockDio();
    test('returns a pizza list', () async {
      when(() => httpClient.get<Map<String, dynamic>>(any())).thenAnswer(
        (_) => Future.value(
          Response(
            statusCode: 200,
            data: {
              'pizzas': [
                {
                  'id': 1,
                  'name': 'Test',
                  'topping': 'topping',
                  'price': 15,
                  'imagePath': 'imagePath',
                  'rating': 5,
                }
              ]
            },
            requestOptions: RequestOptions(path: ''),
          ),
        ),
      );

      final pizzaApiClient = PizzaApiClient(httpClient);
      final list = await pizzaApiClient.fetchPizzas();
      expect(
        list.pizzas,
        equals(
          [
            Pizza(
              id: 1,
              name: 'Test',
              topping: 'topping',
              price: 15,
              imagePath: 'imagePath',
              rating: 5,
            )
          ],
        ),
      );
    });
  });
}
