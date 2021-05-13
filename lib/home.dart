import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';
import 'package:pizza_layout/cart_button.dart';
import 'package:pizza_layout/featured.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/today_specials.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

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
        child: BlocBuilder<PizzaBloc, PizzaState>(
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
