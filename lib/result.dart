import 'package:flutter/material.dart';
 
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
 
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);
 
  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'The question...!';
      print(resultScore);
        } else if (resultScore >= 31) {
      resultText = 'Anwer !';
      print(resultScore);
    } else if (resultScore >= 1) {
      resultText = 'Answer 1!';
    } else if (resultScore >= 2) {
      resultText = 'Answer 2!';
    } else {
      resultText = 'Answer 3!';
      print(resultScore >=3);
    }
    return resultText;
  }
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
           Text(
            'Score ' '$resultScore',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          TextButton(
            onPressed: resetHandler(),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          // FlatButton is deprecated and should not be used
          // Use TextButton instead
 
          // FlatButton(
          //   child: Text(
          //     'Restart Quiz!',
            //   ), //Text
          //   textColor: Colors.blue,
          //   onPressed: resetHandler(),
          // ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}