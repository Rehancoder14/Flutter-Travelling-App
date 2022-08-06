import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelbuddy/cubit/app_cubit.dart';
import 'package:travelbuddy/cubit/app_cubit_logics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: const AppCubitLogic(),
      ),
    );
  }
}
