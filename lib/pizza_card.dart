import 'package:flutter/material.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/rating.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;
  final Alignment alignment;

  const PizzaCard({
    Key? key,
    required this.pizza,
    this.alignment = Alignment.centerRight,
  })  : assert(alignment == Alignment.centerLeft ||
            alignment == Alignment.centerRight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: double.infinity,
          height: 150,
          child: Stack(
            children: [
              Align(
                alignment: alignment,
                child: PizzaCardContent(
                  pizza: pizza,
                  width: constraints.maxWidth * 0.7,
                  padding: EdgeInsets.only(
                    left: alignment == Alignment.centerRight ? 55 : 10,
                    right: alignment == Alignment.centerRight ? 0 : 50,
                    top: 10,
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: alignment == Alignment.centerRight
                    ? constraints.maxWidth * 0.7 - 50
                    : null,
                left: alignment == Alignment.centerLeft
                    ? constraints.maxWidth * 0.7 - 50
                    : null,
                child: Image.asset(
                  pizza.imagePath,
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class PizzaCardContent extends StatelessWidget {
  const PizzaCardContent({
    Key? key,
    required this.pizza,
    required this.width,
    required this.padding,
  }) : super(key: key);

  final Pizza pizza;
  final double width;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: padding,
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
              FittedBox(child: Text(pizza.topping)),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'pizza/${pizza.id}');
                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
