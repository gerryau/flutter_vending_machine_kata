import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vending_machine_kata/functions/vending.dart';

void main() {
  test(
    'Accept valid coins (10c, 20c, 50c) and reject invalid ones (5c)',
    () {
      final vendingMachine = VendingMachine();
      // List<int> coins = [5, 10, 20, 50];
      expect(vendingMachine.insertCoin(10), 10);
      expect(vendingMachine.insertCoin(20), 30);
      expect(vendingMachine.insertCoin(50), 80);
      expect(vendingMachine.insertCoin(5), 80);
    },
  );

  test(
    'If a coin is rejected, it is aded to the total returned change',
    () {
      final vendingMachine = VendingMachine();

      expect(vendingMachine.insertCoin(5), 0); //checking it doesn't work
      expect(vendingMachine.coinReturn, 5);
    },
  );
}
