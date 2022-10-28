import 'package:bloc_comm_observer_poc/publisher/publisher.dart';
import 'package:meta/meta.dart';

part 'gas_state.dart';

class GasCubit extends PublisherCubit<GasState> {
  GasCubit() : super(LowHeat());

  void turnHeatDown() {
    if (state is MediumHeat) {
      emit(LowHeat());
    } else if (state is HighHeat) {
      emit(MediumHeat());
    }
  }

  void turnHeatUp() {
    if (state is LowHeat) {
      emit(MediumHeat());
    } else if (state is MediumHeat) {
      emit(HighHeat());
    }
  }
}
