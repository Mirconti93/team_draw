import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/widgets/DrawScreen.dart';
import 'package:team_draw/widgets/TeamsInsert.dart';

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
          title: const Text("Draw app"),
        ),
        body: BlocBuilder<OptionCubit, OptionState>(builder: (context, state) {

          return Column(
            children: <Widget>[
              const Text("Scegli il numero di squadre:"),
              const Options(),
              const Expanded(child: TeamInsert()),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                  color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                  ),
                onPressed: () {Navigator.of(context).pushNamed('/draw');  },
                child: const Text("Avanti"),)
            ],
          );
        })
    );
  }
}