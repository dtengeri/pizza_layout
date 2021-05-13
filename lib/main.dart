import 'package:dio/dio.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_layout/bloc/cartBloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_api_client.dart';
import 'package:pizza_layout/bloc/pizza/pizza_bloc.dart';
import 'package:pizza_layout/bloc/pizza/pizza_event.dart';
import 'package:pizza_layout/bloc/pizza/pizza_repository.dart';
import 'package:pizza_layout/bloc/simple_bloc_observer.dart';
import 'package:pizza_layout/router.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  final pizzaRepository = PizzaRepository(
    PizzaApiClient(
      Dio(),
    ),
  );
  runApp(MyApp(
    pizzaRepository: pizzaRepository,
  ));
}

class MyApp extends StatefulWidget {
  final PizzaRepository pizzaRepository;

  const MyApp({
    Key? key,
    required this.pizzaRepository,
  }) : super(key: key);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FluroRouter router = FluroRouter();

  @override
  void initState() {
    super.initState();
    defineRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => PizzaBloc(widget.pizzaRepository)
            ..add(
              PizzaListRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Pizza',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('hu', ''),
        ],
        initialRoute: '/',
        onGenerateRoute: router.generator,
      ),
    );
  }
}
