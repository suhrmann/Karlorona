import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Text("This is the first Page :)"),
          ),
          RaisedButton(
              child: Text("Go to second page!"),
              onPressed: () => Navigator.pushNamed(context, '/secondpage'))
        ],
      ),
    );
  }
}
