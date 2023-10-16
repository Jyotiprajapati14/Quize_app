
import 'package:flutter/material.dart';
import 'package:flutter_quize_app/grid_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: grid_list(),
      //StartScreen(),
      //Question(),
     // AnswerButton(),
     //Quiz(),
    // Result(),

    );
  }
}