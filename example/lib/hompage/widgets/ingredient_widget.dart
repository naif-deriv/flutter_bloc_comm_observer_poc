import 'package:example/ingredients_cubit/ingredients_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientsCubit, IngredientsState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Text(
                state.ingredients,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<IngredientsCubit>().addSalt(),
                    child: const Text('add Salt'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().addBBQSauce(),
                    child: const Text('add BBQ Sauce'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().addPepper(),
                    child: const Text('add Pepper'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().addOnion(),
                    child: const Text('add Onion'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().removeSalt(),
                    child: const Text('remove Salt'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().removeBBQSauce(),
                    child: const Text('remove BBQ Sauce'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().removePepper(),
                    child: const Text('remove Pepper'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<IngredientsCubit>().removeOnion(),
                    child: const Text('remove Onion'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
