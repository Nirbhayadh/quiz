import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler; DOESN'T WORK
  // final VoidCallback selectHandler; WORKS
  final void Function() selectHandler; // SAME AS ABOBE LINE
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
