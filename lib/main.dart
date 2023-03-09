import 'package:flutter/material.dart';

import './categories_screen.dart';
import './category_meals_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      home: CategoriesScreen(),
      routes: {'/category-meals': (ctx) => CategoryMeals()},
      theme: ThemeData(
          primaryColor: Colors.cyan,
          canvasColor: Colors.grey.shade400,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold)),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.cyan,
            accentColor: Colors.deepOrange,
          )),
    );
  }
}
