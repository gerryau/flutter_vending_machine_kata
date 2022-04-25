import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vending_machine_kata/cubit/vending_machine_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vending_machine_kata/functions/vending.dart';
import 'package:flutter_vending_machine_kata/views/home_page.dart';

void main() {
  Widget buildWidgetUnderTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Vending Machine Kata',
      home: BlocProvider(
        create: (context) => VendingMachineCubit(VendingMachine()),
        child: const MyHomePage(),
      ),
    );
  }

  testWidgets(
    'Displays current amount inserted in machine.',
    (WidgetTester tester) async {
      // late VendingMachine vendingMachine = VendingMachine();
      await tester.pumpWidget(
        buildWidgetUnderTest(),
      );
      // await tester.pumpAndSettle();
      expect(find.text('INSERT COIN'), findsOneWidget);
    },
  );

  testWidgets(
    "When the 10c button is tapped the 'INSERT COIN' text vanishes and is replaced by the value 'Coin Balance: 10",
    (WidgetTester tester) async {
      //arrange
      await tester.pumpWidget(
        buildWidgetUnderTest(),
      );

      //act
      await tester.tap(find.text('Insert 10c'));
      await tester.pumpAndSettle();

      //assert
      expect(find.text("Coin Balance: 10"), findsOneWidget);
    },
  );

  testWidgets(
      "When a rejected coin is tapped (5c) a 'Coin Return' text appear and display the amount of change to be returned.",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      buildWidgetUnderTest(),
    );

    await tester.tap(find.text('Insert 5c'));
    await tester.pumpAndSettle();

    expect(find.text("Coin Return: 5"), findsOneWidget);
  });
}
