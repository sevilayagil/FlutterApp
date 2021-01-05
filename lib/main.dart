import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  _MyCoolAppState createState() => _MyCoolAppState();
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    _questionIndex = _questionIndex + 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2'];
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Sevo\s First App',
        ),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
          FloatingActionButton(
            onPressed: _answerQuestions,
            child: Icon(Icons.favorite),
          )
        ],
      ),
    );
    return MaterialApp(
      home: scaffold,
    );
  }
}
