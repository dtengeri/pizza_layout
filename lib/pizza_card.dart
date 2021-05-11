import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;

  const PizzaCard({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: PizzaCardContent(
              pizza: pizza,
            ),
          ),
          Positioned(
            top: 25,
            right: MediaQuery.of(context).size.width * 0.7 - 50,
            child: Image.asset(
              pizza.imagePath,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

class PizzaCardContent extends StatelessWidget {
  const PizzaCardContent({
    Key? key,
    required this.pizza,
  }) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 55.0,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pizza.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                children: [
                  Text(
                    '\$${pizza.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Rating(pizza: pizza),
                ],
              ),
              Text(pizza.topping),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to cart',
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
