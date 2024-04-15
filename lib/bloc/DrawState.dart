import 'package:equatable/equatable.dart';

import '../models/Team.dart';

abstract class DrawState extends Equatable {
}

class InitialState extends DrawState {
  List<Team> teams = [];
  @override
  List<Object> get props => [teams];
}

class UpdateState extends DrawState {
  List<Team> teams = [];

  UpdateState(this.teams);

  @override
  List<Object> get props => [teams];
}

class ErrorState extends DrawState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object> get props => [message];
}

