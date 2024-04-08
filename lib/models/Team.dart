import 'package:equatable/equatable.dart';

class Team extends Equatable {
  final String name;
  final int weight;

  const Team({required this.name, required this.weight});

  @override
  List<Object?> get props => [name];

}