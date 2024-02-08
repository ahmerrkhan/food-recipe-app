import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/widgets/loading_widget.dart';
import 'bloc/random_recipe_bloc.dart';
import 'widgets/recipe_info_success_widget.dart';

class RandomRecipe extends StatefulWidget {
  const RandomRecipe({Key? key}) : super(key: key);

  @override
  State<RandomRecipe> createState() => _RandomRecipeState();
}

class _RandomRecipeState extends State<RandomRecipe> {
  late final RandomRecipeBloc bloc;
  @override
  void initState() {
    ///Getting RandomRecipe Bloc on re rendering UI
    bloc = BlocProvider.of<RandomRecipeBloc>(context);
    bloc.add(LoadRandomRecipe());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<RandomRecipeBloc, RandomRecipeState>(
          builder: (context, state) {
            if (state is RandomRecipeLoadState) {
              return const Center(child: LoadingWidget());
            } else if (state is RandomRecipeSuccesState) {
              ///On Success
              return RacipeInfoWidget(
                equipment: state.equipment,
                info: state.recipe,
                nutrient: state.nutrient,
                similarlist: state.similar,
              );
            } else if (state is RandomRecipeErrorState) {
              ///On Failure
              return const Center(
                child: Text("Error"),
              );
            } else {
              return const Center(
                child: Text("Nothing happens"),
              );
            }
          },
        ),
      ),
    );
  }
}
