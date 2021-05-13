import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';
import 'package:pizza_layout/pizza_card.dart';

class TodaySpecials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PizzaBloc, PizzaState>(
        builder: (context, state) => state.maybeWhen(
            (pizzaList) => Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Todays specials',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          for (var i = 1; i < pizzaList.pizzas.length; i++)
                            PizzaCard(pizza: pizzaList.pizzas[i])
                        ],
                      ),
                    ),
                  ],
                ),
            orElse: () => Container()));
  }
}
