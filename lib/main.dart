import 'package:counter/secondscreen.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'second_screen':(context) {
         return const SecondScreeen();
        }
      },
      home: HomeScreen()
    );

  }
}
