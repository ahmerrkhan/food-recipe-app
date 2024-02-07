import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/recipe.dart';
import 'package:hive/hive.dart';

class FavoriteButton extends StatelessWidget {
  final Recipe info;
  const FavoriteButton({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          final box = Hive.box("Favorite");
          box.delete(info.id);
        },
        child: const Icon(
          Icons.favorite,
        ),
      ),
    );
  }
}
