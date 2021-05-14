import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';
import 'package:pizza_layout/cart_button.dart';
import 'package:pizza_layout/featured.dart';
import 'package:pizza_layout/today_specials.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirebasePerformance _performance = FirebasePerformance.instance;
  late final Trace _trace = _performance.newTrace('test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CartButton(
            iconColor: Colors.white,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[300],
        child: BlocConsumer<PizzaBloc, PizzaState>(
          listener: (context, state) async {
            if (state is Loading) {
              await _trace.incrementMetric('fetch_pizza_list', 1);
              await _trace.start();
            }
            if (state is Data) {
              await _trace.stop();
            }
          },
          builder: (context, state) {
            return state.when(
              (pizzaList) => Column(
                children: [
                  Expanded(child: Featured(pizza: pizzaList.pizzas.first)),
                  Expanded(
                    flex: 2,
                    child: TodaySpecials(),
                  ),
                ],
              ),
              initial: () => Container(),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: (String? error) => Container(),
            );
          },
        ),
      ),
    );
  }
}
