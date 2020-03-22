import 'package:flutter/material.dart';

class VentilatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Lüfte mindestens jede Stunde für 5 Minuten Dein Zimmer!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {

              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_ventilate'),
            ),
          ],
        ),
      ),
    );
  }
}