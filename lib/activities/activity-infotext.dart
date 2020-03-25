import 'package:flutter/material.dart';

class ActivityInfotext extends StatelessWidget {
  String text;

  ActivityInfotext({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
    );
  }
}
