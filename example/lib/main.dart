import 'package:example/gas_cubit/gas_cubit.dart';
import 'package:example/hompage/cubit/homepage_cubit.dart';
import 'package:example/ingredients_cubit/ingredients_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'hompage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomepageCubit(),
        ),
        BlocProvider(
          create: (context) =>
              IngredientsCubit()..subscribe(context.read<HomepageCubit>()),
        ),
        BlocProvider(
          create: (context) =>
              GasCubit()..subscribe(context.read<HomepageCubit>()),
        ),
      ],
      child: const MaterialApp(
        title: 'Bloc Comm Observer Pattern',
        home: Homepage(),
      ),
    );
  }
}
