import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setAllFilters(Map<Filter,bool> chosenFilter){
    state = chosenFilter;
  }

  void setFilter(Filter filter, bool isActive) {
    // state[filter]=isActive; //? Not Allowed! => mutating state

    state = {             //~ Creating a new map
      ...state,           //~ with old key value-pairs
      filter: isActive,   //~ and one new key value-pair
    };                    //~ that overrides the respective old key-value pair
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);