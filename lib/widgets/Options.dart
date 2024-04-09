
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/OptionCubit.dart';
import '../bloc/OptionState.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionCubit, OptionState>(builder: (context, state) {
      return GridView.builder(
        // Specifica il numero di colonne nella griglia
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Numero di colonne
          crossAxisSpacing: 10.0, // Spazio orizzontale tra le colonne
          mainAxisSpacing: 10.0, // Spazio verticale tra le righe
        ),
        // Numero di elementi nella griglia
        itemCount: state.options.length,
        // Costruttore per gli elementi della griglia
        itemBuilder: (BuildContext context, int index) {
          // Costruire un singolo elemento della griglia
          return Container(
              height: 80,
              child: Card(
                child: Center(
                  child: Text(state.options[index].toString()),
                ),
              )
          );
        },
      );
    });


  }

}