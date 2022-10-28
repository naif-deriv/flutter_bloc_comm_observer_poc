import 'package:bloc_comm_observer_poc/publisher/publisher.dart';

part 'ingredients_state.dart';

class IngredientsCubit extends PublisherCubit<IngredientsState> {
  IngredientsCubit() : super(const IngredientsState(ingredients: ''));

  void addPepper() {
    emit(state.copyWith(newIngredients: '${state.ingredients}pepper '));
  }

  void addSalt() {
    emit(state.copyWith(newIngredients: '${state.ingredients}salt '));
  }

  void addBBQSauce() {
    emit(state.copyWith(newIngredients: '${state.ingredients}BBQSauce '));
  }

  void addOnion() {
    emit(state.copyWith(newIngredients: '${state.ingredients}onion '));
  }

  void removePepper() {
    emit(state.copyWith(
        newIngredients: state.ingredients.replaceAll('pepper ', '')));
  }

  void removeSalt() {
    emit(state.copyWith(
        newIngredients: state.ingredients.replaceAll('salt ', '')));
  }

  void removeBBQSauce() {
    emit(state.copyWith(
        newIngredients: state.ingredients.replaceAll('BBQSauce ', '')));
  }

  void removeOnion() {
    emit(state.copyWith(
        newIngredients: state.ingredients.replaceAll('onion ', '')));
  }
}
