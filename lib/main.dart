import 'package:flutter/material.dart';
import 'package:startupnamer/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Bergen Text',
        ),
        darkTheme: ThemeData.dark(),
        home: MainScreen());
  }
}
