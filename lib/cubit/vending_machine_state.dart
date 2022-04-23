part of 'vending_machine_cubit.dart';

@freezed
class VendingMachineState with _$VendingMachineState {
  const factory VendingMachineState.initial({
    required int coinBalance,
  }) = _Initial;
}
