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
              child: Text("Soziale Interaktion"),
              onPressed: () => Navigator.pushNamed(context, '/social'),
            ),
            RaisedButton(
              child: Text("Handynutzung"),
              onPressed: () => Navigator.pushNamed(context, '/dbtester'),
            ),
            RaisedButton(
              child: Text("Smartphone Desinfektion"),
              onPressed: () => Navigator.pushNamed(context, '/quiz'),
            ),
            RaisedButton(
              child: Text("Niesen / Husten"),
              onPressed: () => Navigator.pushNamed(context, '/mascot'),
            ),
            RaisedButton(
              child: Text("Hande nicht im Gesicht"),
              onPressed: () => Navigator.pushNamed(context, '/mascot'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
