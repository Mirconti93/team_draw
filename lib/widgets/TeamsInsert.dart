import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/OptionCubit.dart';

class TeamInsert extends StatelessWidget {
  const TeamInsert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final optionCubit = context.watch<OptionCubit>();
    return ListView.builder(// Assicura che il ListView si adatti al contenuto
      itemCount: optionCubit.state.selectedOption,
      scrollDirection: Axis.vertical,// Numero di elementi nella lista dinamica
      itemBuilder: (BuildContext context, int index) {
        // Costruisce dinamicamente un widget per ciascun elemento della lista dinamica
        return ListTile(
          title: Padding(
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Team $index', // Etichetta del campo di testo
                border: OutlineInputBorder(), // Bordo del campo di testo
              ),
              onChanged: (text) {
                // Callback chiamato ogni volta che il testo nel campo di testo viene modificato
                print('Nuovo testo: $text');
              },
            ),
          ),
        );
      },
    );
  }

}
