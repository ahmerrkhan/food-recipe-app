import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/nav/bottom_nav_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///Commenting it out for a time being
  // var dir = await getApplicationDocumentsDirectory();
  // await Hive.init(dir.path);
  //await Hive.openBox('Favorite');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavView(),
    );
  }
}
