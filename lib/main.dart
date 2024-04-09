import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_draw/bloc/DrawCubit.dart';
import 'package:team_draw/bloc/OptionCubit.dart';
import 'package:team_draw/bloc/OptionState.dart';
import 'package:team_draw/widgets/HomePage.dart';
import 'package:team_draw/widgets/Options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => OptionCubit()),
          BlocProvider(create: (BuildContext context) => DrawCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
            useMaterial3: true,
          ),
          home: HomePage()
        )
    );
  }
}






