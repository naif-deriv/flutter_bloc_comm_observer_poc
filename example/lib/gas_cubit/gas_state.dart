part of 'gas_cubit.dart';

@immutable
abstract class GasState {}

class LowHeat extends GasState {}

class MediumHeat extends GasState {}

class HighHeat extends GasState {}
