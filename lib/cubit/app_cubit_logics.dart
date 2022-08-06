import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelbuddy/cubit/app_cubit.dart';

import '../pages/first_page.dart';
import 'appcubicstates.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubits, CubitState>(
      builder: (context, state) {
        if (state is WelcomeState) {
          return const Welcome();
        } else {
          return Container();
        }
      },
    ));
  }
}
