// Definizione del Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/models/Team.dart';

import 'DrawState.dart';

class DrawCubit extends Cubit<DrawState> {

  DrawCubit() : super(InitialState());

  void addTeams(List<Team> teams) {
    emit(UpdateState(teams));
  }

  void addTeam(Team team, int index) {
    List<Team> newList = List.from(state.props);
    newList[index] = team;
    emit(UpdateState(newList));
  }

  void notifyError() {
    emit(ErrorState("Error"));
  }
}