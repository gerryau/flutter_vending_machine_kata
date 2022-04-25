import 'package:flutter/material.dart';
import 'package:flutter_vending_machine_kata/cubit/vending_machine_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Vending Machine Kata'),
      ),
      body: BlocBuilder<VendingMachineCubit, VendingMachineState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.coinBalance == 0 && state.coinReturn == 0
                      ? "INSERT COIN"
                      : "Coin Balance: ${state.coinBalance}",
                ),
                Text(state.coinReturn == 0 && state.coinBalance == 0
                    ? ""
                    : "Coin Return: ${state.coinReturn}"),
                ElevatedButton(
                  onPressed: () {
                    context.read<VendingMachineCubit>().insertCoin(50);
                  },
                  child: const Text('Insert 50c'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<VendingMachineCubit>().insertCoin(20);
                  },
                  child: const Text('Insert 20c'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<VendingMachineCubit>().insertCoin(10);
                  },
                  child: const Text('Insert 10c'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<VendingMachineCubit>().insertCoin(5);
                  },
                  child: const Text('Insert 5c'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
