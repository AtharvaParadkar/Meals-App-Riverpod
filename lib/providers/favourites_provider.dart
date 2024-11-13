import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_riverpod/models/meal.dart';

class FavouritesMealsNotifer extends StateNotifier<List<Meal>> {
  FavouritesMealsNotifer() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavourite = state.contains(meal);

    if (mealIsFavourite) {
      state = state.where((m) => m.id != meal.id).toList();
      return true;
    } else {
      state = [...state, meal];
      return false;
    }
  }
}

final favouritesMealsProvider =
    StateNotifierProvider<FavouritesMealsNotifer, List<Meal>>((ref) {
  return FavouritesMealsNotifer();
});
