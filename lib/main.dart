import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestions() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sevo\'s First App',
          ),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Google Sans",
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text(
                'Answer 1',
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 2'),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            FloatingActionButton(
              onPressed: answerQuestions,
              child: Icon(Icons.favorite),
            )
          ],
        ),
      ),
    );
  }
}
