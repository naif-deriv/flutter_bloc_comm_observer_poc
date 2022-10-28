import 'package:example/gas_cubit/gas_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GasWidget extends StatelessWidget {
  const GasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GasCubit, GasState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Center(
                child: Text(state is LowHeat
                    ? 'Low'
                    : state is MediumHeat
                        ? 'Medium'
                        : 'High'),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<GasCubit>().turnHeatDown(),
                    child: const Text('Lower'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<GasCubit>().turnHeatUp(),
                    child: const Text('Higher'),
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
