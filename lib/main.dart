import 'package:flutter/material.dart';
import './question.dart';

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
          RaisedButton(
            onPressed: _answerQuestions,
            child: Text(
              'Answer 1',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Google Sans",
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          RaisedButton(
            onPressed: _answerQuestions,
            child: Text('Answer 2'),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
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
