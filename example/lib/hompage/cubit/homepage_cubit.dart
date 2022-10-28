import 'package:bloc/bloc.dart';
import 'package:bloc_comm_observer_poc/subscriber/subscriber.dart';
import 'package:example/gas_cubit/gas_cubit.dart';
import 'package:example/ingredients_cubit/ingredients_cubit.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> with Subscriber<dynamic> {
  HomepageCubit()
      : super(const HomepageState(
          contents: '',
          heatStatus: 'potatoes',
        ));

  @override
  void update(object) {
    if (object is LowHeat) {
      emit(state.copyWith(heatStatus: 'Heat is Low'));
    } else if (object is MediumHeat) {
      emit(state.copyWith(heatStatus: 'Heat is Medium'));
    } else if (object is HighHeat) {
      emit(state.copyWith(heatStatus: 'Heat is High'));
    } else if (object is IngredientsState) {
      emit(state.copyWith(contents: object.ingredients));
    }
  }
}
