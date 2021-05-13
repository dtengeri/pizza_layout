import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/pizza_card.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

final mockObserver = MockNavigatorObserver();

void main() {
  setUpAll(() {
    registerFallbackValue(MaterialPageRoute(builder: (_) => Container()));
  });
  group('PizzaCard', () {
    testWidgets('Displays pizza name', (WidgetTester tester) async {
      await tester.pumpWidget(
        wrapCard(
          PizzaCard(
            pizza: Pizza(
                id: 1,
                name: 'Test',
                topping: 'topping',
                price: 15,
                imagePath: 'images/pizza-pepperoni.png',
                rating: 5),
          ),
        ),
      );

      final nameFinder = find.text('Test');
      expect(nameFinder, findsOneWidget);
    });
  });

  testWidgets('navigates to details', (WidgetTester tester) async {
    await tester.pumpWidget(
      wrapCard(
        PizzaCard(
          pizza: Pizza(
              id: 1,
              name: 'Test',
              topping: 'topping',
              price: 15,
              imagePath: 'images/pizza-pepperoni.png',
              rating: 5),
        ),
      ),
    );

    final addButtonFinder = find.byType(ElevatedButton);
    await tester.tap(addButtonFinder);
    await tester.pumpAndSettle();

    verify(() => mockObserver.didPush(any(), any())).called(greaterThan(1));
  });
}

Widget wrapCard(Widget card) => MaterialApp(
      localizationsDelegates: [
        S.delegate,
      ],
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (context) => Container(),
      ),
      navigatorObservers: [mockObserver],
      home: card,
    );
