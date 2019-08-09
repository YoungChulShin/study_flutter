import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_timer/bloc/timer_bloc.dart';
import 'package:flutter_timer/ticker.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TimerBloc _timerBloc = TimerBloc(ticker: Ticker());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Fullter Timer',
      home: BlocProvider(
        bloc: _timerBloc,
        child: Timer()
      ),
    );
  }

  @override
  void dispose() {
    _timerBloc.dispose();
    super.dispose();
  }
}