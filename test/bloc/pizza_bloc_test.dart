import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza_list.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_event.dart';
import 'package:pizza_layout/bloc/pizza/pizza_repository.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';
import 'package:test/test.dart';

class MockPizzaRepository extends Mock implements PizzaRepository {}

void main() {
  group('PizzaBloc', () {
    late PizzaBloc pizzaBloc;
    final PizzaRepository pizzaRepository = MockPizzaRepository();
    setUp(() {
      pizzaBloc = PizzaBloc(pizzaRepository);
    });

    test('initial state is Initial', () {
      expect(pizzaBloc.state, isA<Initital>());
    });

    group('when pizzas are available', () {
      setUp(() {
        when(() => pizzaRepository.getPizzas()).thenAnswer(
          (_) => Future.value(
            PizzaList(
              [
                Pizza(
                    id: 1,
                    name: 'Test',
                    topping: 'topping',
                    price: 15,
                    imagePath: 'imagePath',
                    rating: 5),
              ],
            ),
          ),
        );
      });
      tearDown(() {
        reset(pizzaRepository);
      });
      blocTest(
        'emits loading when pizza list is requested',
        build: () => pizzaBloc,
        act: (PizzaBloc bloc) => bloc.add(PizzaListRequested()),
        expect: () => [
          isA<Loading>(),
          isA<Data>(),
        ],
      );
    });

    blocTest(
      'emits error when pizza list is not available',
      build: () => pizzaBloc,
      act: (PizzaBloc bloc) => bloc.add(PizzaListRequested()),
      expect: () => [
        isA<Loading>(),
        isA<ErrorDetails>(),
      ],
    );
  });
}
