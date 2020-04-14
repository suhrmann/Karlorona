import 'package:flutter/material.dart';

class ActivityHeadline extends StatelessWidget {
  String text;

  ActivityHeadline({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.center
      ),
    );
  }
}
