import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_layout/bloc/cartBloc.dart';
import 'package:pizza_layout/bloc/cart_item.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_state.dart';

import 'package:pizza_layout/cart_button.dart';
import 'package:pizza_layout/details/amount_selector.dart';
import 'package:pizza_layout/details/crust.dart';
import 'package:pizza_layout/details/extra_toppings.dart';
import 'package:pizza_layout/details/size_selector_buttons.dart';
import 'package:pizza_layout/details/topping.dart';
import 'package:pizza_layout/details/total.dart';
import 'package:pizza_layout/profile_button.dart';
import 'package:pizza_layout/rating.dart';
import 'package:pizza_layout/details/size.dart';

class PizzaDetails extends StatelessWidget {
  final int pizzaId;

  const PizzaDetails({
    Key? key,
    required this.pizzaId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PizzaBloc, PizzaState>(
      builder: (context, state) => state.maybeWhen(
        (pizzaList) => _PizzaDetails(pizza: pizzaList.pizzas[pizzaId]),
        orElse: () => Container(),
      ),
    );
  }
}

class _PizzaDetails extends StatefulWidget {
  final Pizza pizza;

  const _PizzaDetails({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  @override
  _PizzaDetailsState createState() => _PizzaDetailsState();
}

class _PizzaDetailsState extends State<_PizzaDetails> {
  String _crust = 'standard';
  String _size = 'small';
  String _topping = 'standard';
  int _amount = 1;

  @override
  void initState() {
    super.initState();
  }

  void _changeCrust(String crust) {
    setState(() {
      _crust = crust;
    });
  }

  void _changeSize(String size) {
    setState(() {
      _size = size;
    });
  }

  void _changeTopping(String topping) {
    setState(() {
      _topping = topping;
    });
  }

  void _changeAmount(int amount) {
    setState(() {
      _amount = amount;
    });
  }

  void _addPizzaToCart() {
    var cartBloc = context.read<CartBloc>();
    for (var i = 0; i < _amount; i++) {
      cartBloc.add(
        AddItemToCartEvent(
          CartItem(
            pizza: widget.pizza,
            size: _size,
            crust: _crust,
            topping: _topping,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Details',
          style: TextStyle(color: Colors.grey[900]),
        ),
        actions: [
          CartButton(
            iconColor: Colors.black,
          ),
          ProfileButton(
            iconColor: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizeSelectorButtons(
                      image: Hero(
                        tag: widget.pizza.imagePath,
                        child: Image.asset(
                          widget.pizza.imagePath,
                        ),
                      ),
                      size: _size,
                      onSizeChange: _changeSize,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pizza.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Rating(
                        pizza: widget.pizza,
                      ),
                      AmountSelector(
                        amount: _amount,
                        amountChange: _changeAmount,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                Topping(
                  topping: widget.pizza.topping,
                ),
                Size(
                  size: _size,
                  onSizeChange: _changeSize,
                ),
                Crust(
                  crust: _crust,
                  onCrustSelect: _changeCrust,
                ),
                ExtraToppings(
                  topping: _topping,
                  onToppingChange: _changeTopping,
                ),
              ],
            )),
            Total(
              totalPrice: widget.pizza.price,
            ),
            ElevatedButton(
              onPressed: _addPizzaToCart,
              child: Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
