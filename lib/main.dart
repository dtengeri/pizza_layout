import 'package:flutter/material.dart';
import 'package:pizza_layout/dashed_circle.dart';
import 'package:pizza_layout/pizza.dart';
import 'package:pizza_layout/pizza_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              child: DashedCircle(
                diameter: 30,
              ),
            ),
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
        ),
      ),
    );
  }
}
