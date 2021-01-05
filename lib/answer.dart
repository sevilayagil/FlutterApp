import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.green,
        textColor: Colors.white,
        child: Text(
          'Answer',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Google Sans",
              fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
