import 'package:codigo5_recipes/models/recipe.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  Recipe recipe;
  DetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle"),
      ),
      body: Column(
        children: [
          Image.network(recipe.image),
          Text(recipe.title),
          Text(recipe.description),
        ],
      ),
    );
  }
}
