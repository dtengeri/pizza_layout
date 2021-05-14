// @dart=2.9
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pizza_layout/bloc/pizza/pizza_api_client.dart';
import 'package:pizza_layout/bloc/pizza/pizza_repository.dart';
import 'package:pizza_layout/featured.dart';
import 'package:pizza_layout/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Add to cart takes to the details page',
      (WidgetTester tester) async {
    final pizzaRepository = PizzaRepository(
      PizzaApiClient(
        Dio(),
      ),
    );
    await Firebase.initializeApp();
    await tester.pumpWidget(
      MyApp(pizzaRepository: pizzaRepository),
    );

    await tester.pumpAndSettle();

    expect(find.text('Todays specials'), findsOneWidget);

    final addToCartButtonFinder = find
        .byWidgetPredicate(
            (widget) => widget is Text && widget.data == 'Add to cart')
        .first;
    await tester.tap(addToCartButtonFinder);

    await tester.pumpAndSettle();

    expect(find.text('Details'), findsOneWidget);
  });
}
