import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/pizza_card.dart';

class TodaySpecials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            children: [for (var pizza in PIZZAS) PizzaCard(pizza: pizza)],
          ),
        ),
      ],
    );
  }
}
