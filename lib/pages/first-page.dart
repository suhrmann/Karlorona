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

          /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
          RaisedButton(
            child: Text("Go to second page!"),
            onPressed: () => Navigator.pushNamed(context, '/secondpage'),
          ),
          RaisedButton(
            child: Text("Go to database tester!"),
            onPressed: () => Navigator.pushNamed(context, '/dbtester'),
          )
        ],
      ),
    );
  }
}
