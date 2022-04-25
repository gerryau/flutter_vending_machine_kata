part of 'vending_machine_cubit.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs

@freezed
class VendingMachineState with _$VendingMachineState {
  const factory VendingMachineState.initial({
    required int coinBalance,
    required int coinReturn,
  }) = _Initial;
}
