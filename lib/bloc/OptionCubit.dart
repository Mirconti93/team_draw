// Definizione del Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/bloc/OptionState.dart';

class OptionCubit extends Cubit<OptionState> {

  OptionCubit() : super(SelectedState(4));

  void selectOption(int selection) {
    emit(SelectedState(selection));
  }


}