import 'package:flutter/material.dart';
import 'package:pizza_layout/details/text_toggle_buttons.dart';

typedef OnToppingChange = void Function(String topping);

class ExtraToppings extends StatelessWidget {
  final options = [
    'standard',
    'extraCheese',
    'extraSpice',
  ];
  final String topping;
  final OnToppingChange onToppingChange;

  ExtraToppings({
    Key? key,
    required this.topping,
    required this.onToppingChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Toppings',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
          TextToggleButtons(
            texts: options,
            isSelected: [
              topping == options[0],
              topping == options[1],
              topping == options[2],
            ],
            onPressed: (int index) {
              onToppingChange(options[index]);
            },
          ),
        ],
      ),
    );
  }
}
