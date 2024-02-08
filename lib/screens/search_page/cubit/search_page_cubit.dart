import 'package:bloc/bloc.dart';
import 'package:food_recipe_app/repo/get_search_results.dart';
import 'package:food_recipe_app/screens/search_page/cubit/search_page_state.dart';


class SearchPageCubit extends Cubit<SearchPageState> {
  SearchPageCubit() : super(SearchPageState.initial());
  final repo = SearchRepo();
  void textChange(String text) async {
    emit(state.copyWith(status: Status.loading, searchText: text));
    final list = await repo.getAutoCompleteList(text);
    emit(state.copyWith(status: Status.success, searchList: list.list));
  }
}