import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/bloc/DrawCubit.dart';
import 'package:team_draw/bloc/DrawState.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DrawScreen extends StatelessWidget {
  const DrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Draw")),
        body: BlocBuilder<DrawCubit, DrawState>(builder: (context, state) {
          final drawCubit = context.watch<DrawCubit>();
          return Column(
            children: [
              Text("Draw result:", textAlign: TextAlign.center),
              ListView.builder(padding: const EdgeInsets.all(4),
                itemCount: drawCubit.state.props.length,
                itemBuilder: (BuildContext context, int index) {
                  print("item:" + drawCubit.state.teamList[index].name);
                  return Text(drawCubit.state.teamList[index].name);
                }),
            ],
          );
        }
      )
    );
  }
}