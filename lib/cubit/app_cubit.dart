import 'package:bloc/bloc.dart';
import 'package:travelbuddy/cubit/appcubicstates.dart';

class AppCubits extends Cubit<CubitState> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
