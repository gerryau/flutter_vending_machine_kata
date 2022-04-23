import 'package:flutter/material.dart';
import 'package:flutter_vending_machine_kata/views/home_page.dart';

import 'cubit/vending_machine_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'functions/vending.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}
