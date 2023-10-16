import 'package:flutter/material.dart';
 
class Question extends StatelessWidget {
  final String questionText;
 
  const Question(this.questionText, {Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('The question..!'),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {}, 
          child: const Text('Anwer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
             child: const Text('Anwer 2'),
             ),
              ElevatedButton(
            onPressed: () {},
             child: const Text('Anwer 3'),
             ),
        ],)
      //Text
    ); //Container
  }
}