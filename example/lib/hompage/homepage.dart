import 'package:example/hompage/cubit/homepage_cubit.dart';
import 'package:example/hompage/widgets/gas_widget.dart';
import 'package:example/hompage/widgets/ingredient_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageCubit, HomepageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Observations on Cooking',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const Expanded(
                child: GasWidget(),
              ),
              const Expanded(
                child: IngredientWidget(),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(state.heatStatus),
                    ),
                    Expanded(
                      child: Text(state.contents),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
