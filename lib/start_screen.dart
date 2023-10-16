import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
const StartScreen({super.key});

@override
Widget build(context) {
  return Center(
    
    child: Column(mainAxisSize: MainAxisSize.min,
      children: [
      Image.asset('assets/images/quize.png',width: 300, height: 300,),
      
    ],
    ),
  ); 
}
}