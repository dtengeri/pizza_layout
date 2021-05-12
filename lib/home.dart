import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            Expanded(child: Featured(pizza: PIZZAS[0])),
            Expanded(
              flex: 2,
              child: TodaySpecials(),
            ),
          ],
        ),
      ),
    );
  }
}
