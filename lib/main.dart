import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(
              'Question ?',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Google Sans",
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'Answer 1',
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            RaisedButton(child: Text('Answer'), onPressed: null),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.favorite),
            )
          ],
        ),
      ),
    );
  }
}
