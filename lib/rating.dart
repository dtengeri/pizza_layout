import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; i++)
          Icon(
            pizza.rating > i ? Icons.star : Icons.star_border,
            size: 16,
            color: Colors.yellow[700],
          ),
      ],
    );
  }
}
