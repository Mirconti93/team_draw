import 'package:equatable/equatable.dart';


abstract class OptionState extends Equatable {
  final options = [4, 8, 10, 12, 16, 24, 32, 64];
}

class SelectedState extends OptionState {
  final int counter;
  SelectedState(this.counter);
  @override
  List<Object> get props => [counter];
}