import 'package:flutter/material.dart';

class PsychPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Psychisches Wohlbefinden:"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Sozialer Kontakt"),
              onPressed: () => Navigator.pushNamed(context, '/social'),
            ),
            RaisedButton(
              child: Text("Medienkonsum"),
              onPressed: () => Navigator.pushNamed(context, '/dbtester'),
            ),
            RaisedButton(
              child: Text("Yoga"),
              onPressed: () => Navigator.pushNamed(context, '/quiz'),
            ),
            RaisedButton(
              child: Text("Alltag strukturieren"),
              onPressed: () => Navigator.pushNamed(context, '/mascot'),
            ),
            RaisedButton(
              child: Text("Tagesziel"),
              onPressed: () => Navigator.pushNamed(context, '/mascot'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
