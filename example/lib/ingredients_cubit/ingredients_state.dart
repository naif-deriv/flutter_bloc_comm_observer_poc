part of 'ingredients_cubit.dart';

class IngredientsState {
  const IngredientsState({required this.ingredients});
  final String ingredients;

  IngredientsState copyWith({
    required String newIngredients,
  }) =>
      IngredientsState(ingredients: newIngredients);
}
