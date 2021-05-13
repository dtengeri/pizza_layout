import 'package:bloc/bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_event.dart';
import 'package:pizza_layout/bloc/pizza/pizza_repository.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  final PizzaRepository pizzaRepository;

  PizzaBloc(this.pizzaRepository) : super(PizzaState.initial());

  @override
  Stream<PizzaState> mapEventToState(PizzaEvent event) async* {
    if (event is PizzaListRequested) {
      yield PizzaState.loading();
      try {
        final pizzaList = await pizzaRepository.getPizzas();
        yield PizzaState(pizzaList);
      } catch (_) {
        yield PizzaState.error('Error fetching pizzas');
      }
    }
  }
}
