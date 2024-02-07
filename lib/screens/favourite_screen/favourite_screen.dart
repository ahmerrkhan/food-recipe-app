import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/food_type.dart';
import 'package:food_recipe_app/models/recipe.dart';
import 'package:food_recipe_app/screens/home_screen/widgets/list_items.dart';
import 'package:hive/hive.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Spoonacular",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                CupertinoIcons.heart_fill,
                size: 105,
                color: Colors.grey,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  "You don't have any Favorite recipe yet.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
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
