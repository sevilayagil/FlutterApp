import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Sukriye aşağıdaki milletlerden hangisiyle evlencek',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('Question '),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
