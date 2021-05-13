import 'package:flutter/material.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/dashed_circle.dart';
import 'package:pizza_layout/pizza_card.dart';

class Featured extends StatelessWidget {
  final Pizza pizza;

  const Featured({
    Key? key,
    required this.pizza,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: RedBox(),
          ),
          for (var i = 0; i < 3; i++)
            Align(
              alignment: Alignment.center,
              child: DashedCircle(
                diameter: 120 + i * 40,
              ),
            ),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: (MediaQuery.of(context).size.width / 2) / 0.7,
              ),
              child: PizzaCard(
                pizza: pizza,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  const RedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: -5,
            offset: Offset(-5, -5),
            blurRadius: 30,
          ),
          BoxShadow(
            color: Colors.red[900]!.withOpacity(0.6),
            spreadRadius: 2,
            offset: Offset(7, 7),
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}
