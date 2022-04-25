import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_vending_machine_kata/cubit/vending_machine_cubit.dart';
import 'package:flutter_vending_machine_kata/functions/vending.dart';

void main() {
  blocTest(
    'description',
    build: () {
      return VendingMachineCubit(VendingMachine());
    },
    act: (VendingMachineCubit cubit) async => cubit.insertCoin(5),
    expect: () =>
        [const VendingMachineState.initial(coinBalance: 0, coinReturn: 5)],
  );
}
