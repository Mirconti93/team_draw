import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/OptionCubit.dart';
import '../bloc/OptionState.dart';
import 'Options.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Draw app"),
        ),
        body: BlocBuilder<OptionCubit, OptionState>(builder: (context, state) {
          final optionCubit = context.watch<OptionCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Scegli il numero di squadre:"),
              Expanded(child: Options()),
              ListView.builder(
                shrinkWrap: true, // Assicura che il ListView si adatti al contenuto
                itemCount: optionCubit.state.selectedOption, // Numero di elementi nella lista dinamica
                itemBuilder: (BuildContext context, int index) {
                  // Costruisce dinamicamente un widget per ciascun elemento della lista dinamica
                  return ListTile(
                    title: Text('Elemento $index'), // Testo dell'elemento
                  );
                },
              ),
            ],
          );
        })
    );
  }
}