import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Aktivitäten:"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Infektionsschutz"),
              onPressed: () => Navigator.pushNamed(context, '/infect'),
            ),
            RaisedButton(
              child: Text("Allgemeine Gesundheit"),
              onPressed: () => Navigator.pushNamed(context, '/health'),
            ),
            RaisedButton(
              child: Text("Psychisches Wohlbefinden"),
              onPressed: () => Navigator.pushNamed(context, '/psych'),
            ),
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
