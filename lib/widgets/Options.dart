
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/OptionCubit.dart';
import '../bloc/OptionState.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40, child: BlocBuilder<OptionCubit, OptionState>(builder: (context, state) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        // Numero di elementi nella griglia
        itemCount: state.options.length,
        // Costruttore per gli elementi della griglia
        itemBuilder: (BuildContext context, int index) {
          //singolo elemento della griglia
          return Container(
              height: 40,
              child: GestureDetector(
                onTap: () {
              // Azione da eseguire quando la Card viene toccata
                  BlocProvider.of<OptionCubit>(context).selectOption(state.options[index]);
                },
                child: Card(
                  child: Center(
                    child: Text(state.options[index].toString()),
                  )
                ),
              )
          );
        },
      );
    }));


  }

}