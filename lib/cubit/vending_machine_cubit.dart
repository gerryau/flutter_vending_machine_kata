import 'package:bloc/bloc.dart';
import 'package:flutter_vending_machine_kata/functions/vending.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vending_machine_state.dart';
part 'vending_machine_cubit.freezed.dart';

class VendingMachineCubit extends Cubit<VendingMachineState> {
  final VendingMachine _vendingMachine;
  VendingMachineCubit(this._vendingMachine)
      : super(const VendingMachineState.initial(coinBalance: 0, coinReturn: 0));

  Future<void> insertCoin(int coin) async {
    final balance = _vendingMachine.insertCoin(coin); //5 -> stays the same
    // add the 5 to coin return
    emit(
      VendingMachineState.initial(
          coinBalance: balance, coinReturn: _vendingMachine.coinReturn),
    );
  }
}
