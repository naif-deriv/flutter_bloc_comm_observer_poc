part of 'homepage_cubit.dart';

class HomepageState {
  final String contents;
  final String heatStatus;

  const HomepageState({required this.contents, required this.heatStatus});

  HomepageState copyWith({String? contents, String? heatStatus}) =>
      HomepageState(
        contents: contents ?? this.contents,
        heatStatus: heatStatus ?? this.heatStatus,
      );
}
