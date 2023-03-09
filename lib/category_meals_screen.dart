import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  // final String catId;
  // final String catName;

  // const CategoryMeals(this.catId, this.catName, {super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catName = routeArgs['name'];
    return Scaffold(
        appBar: AppBar(
          title: Text(catName as String),
        ),
        body: const Placeholder());
  }
}
