import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: 1 == 1
            ? Row(
                children: <Widget>[Text("This is the second page!")],
              )
            : Container());
  }
}
