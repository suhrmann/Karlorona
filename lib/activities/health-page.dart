import 'package:flutter/material.dart';

class HealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Allgemeine Gesundheit:"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Spaziergang"),
              onPressed: () => Navigator.pushNamed(context, '/walk'),
            ),
            RaisedButton(
              child: Text("Kraftübungen"),
              onPressed: () => Navigator.pushNamed(context, '/gym'),
            ),
            RaisedButton(
              child: Text("Ausdauerübungen"),
              onPressed: () => Navigator.pushNamed(context, '/run'),
            ),
            RaisedButton(
              child: Text("Schlafen"),
              onPressed: () => Navigator.pushNamed(context, '/sleep'),
            ),
            RaisedButton(
              child: Text("Lüften"),
              onPressed: () => Navigator.pushNamed(context, '/ventilate'),
            ),
            RaisedButton(
              child: Text("Trinken"),
              onPressed: () => Navigator.pushNamed(context, '/drink'),
            ),
            RaisedButton(
              child: Text("Obst / Gemüse essen"),
              onPressed: () => Navigator.pushNamed(context, '/eat'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
