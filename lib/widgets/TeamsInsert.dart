import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/bloc/DrawCubit.dart';

import '../bloc/DrawState.dart';
import '../bloc/OptionCubit.dart';
import '../models/Team.dart';

// Widget per visualizzare e aggiungere elementi alla lista
class TeamInsert extends StatelessWidget {
  const TeamInsert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DrawCubit>();
    return Container( child: BlocBuilder<DrawCubit, DrawState>(builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: cubit.state.teamList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cubit.state.teamList[index].name),
                );
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                onSubmitted: (value) {
                  BlocProvider.of<DrawCubit>(context).addTeam(Team(name: value, weight: 0));
                },
                decoration: InputDecoration(
                labelText: 'Nuovo elemento',
                suffixIcon: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  BlocProvider.of<DrawCubit>(context).addTeam(Team(name: 'Nuovo elemento', weight: 0));
                },
                  ),
                ),
              ),
            ),
          ],
      );
      }
    ));
  }
}


/*class TeamInsert extends StatelessWidget {
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
          title: Container(
            height: 28,
            padding: EdgeInsets.all(2.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Team $index', // Etichetta del campo di testo
                border: OutlineInputBorder(), // Bordo del campo di testo
              ),
              onChanged: (text) {
                // Callback chiamato ogni volta che il testo nel campo di testo viene modificato
                print('Nuovo testo: $text');
                BlocProvider.of<DrawCubit>(context).addTeam(Team(name: text, weight: 0), index);
              },
            ),
          ),
        );
      },
    );
  }

}*/
