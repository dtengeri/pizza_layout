import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pizza_layout/bloc/pizza/model/pizza.dart';
import 'package:pizza_layout/rating.dart';

class PizzaCard extends StatefulWidget {
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
  _PizzaCardState createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  );

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
                alignment: widget.alignment,
                child: PizzaCardContent(
                  pizza: widget.pizza,
                  width: constraints.maxWidth * 0.7,
                  padding: EdgeInsets.only(
                    left: widget.alignment == Alignment.centerRight ? 55 : 10,
                    right: widget.alignment == Alignment.centerRight ? 0 : 50,
                    top: 10,
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: widget.alignment == Alignment.centerRight
                    ? constraints.maxWidth * 0.7 - 50
                    : null,
                left: widget.alignment == Alignment.centerLeft
                    ? constraints.maxWidth * 0.7 - 50
                    : null,
                child: GestureDetector(
                  onTap: () {
                    controller.reset();
                    controller.forward();
                  },
                  child: RotationTransition(
                    turns: controller,
                    child: Hero(
                      tag: widget.pizza.imagePath,
                      child: Image.asset(
                        widget.pizza.imagePath,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
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
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      S.of(context)!.addToCart,
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
