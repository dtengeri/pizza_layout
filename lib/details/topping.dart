import 'package:flutter/material.dart';

class Topping extends StatelessWidget {
  final String? topping;

  const Topping({
    Key? key,
    this.topping,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Text(
        topping!,
        style: TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
