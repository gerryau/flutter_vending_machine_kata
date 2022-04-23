import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vending_machine_kata/views/home_page.dart';

void main() {
  Widget buildWidgetUnderTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Vending Machine Kata',
      home: const MyHomePage(),
    );
  }

  testWidgets(
    'Displays current amount inserted in machine.',
    (WidgetTester tester) async {
      // late VendingMachine vendingMachine = VendingMachine();
      await tester.pumpWidget(
        buildWidgetUnderTest(),
      );
      expect(find.text('Coin Balance: 0'), findsOneWidget);
    },
  );
}
