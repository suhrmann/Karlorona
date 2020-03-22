import 'package:flutter/material.dart';

class EatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Achte auf eine ausgewogene Ernährung mit Obst und Gemüse!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {

              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_eat'),
            ),
          ],
        ),
      ),
    );
  }
}