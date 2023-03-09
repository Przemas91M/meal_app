import 'package:flutter/material.dart';

import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String catId;
  final String name;
  final Color color;
  const CategoryItem(this.catId, this.name, this.color, {super.key});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals', arguments: {'id': catId, 'name': name});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [color.withOpacity(0.5), color],
                center: Alignment.topLeft,
                radius: 0.7),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
