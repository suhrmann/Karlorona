import 'package:flutter/material.dart';

class HygienePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Infektionsschutz:"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Hände waschen"),
              onPressed: () => Navigator.pushNamed(context, '/hand'),
            ),
            RaisedButton(
              child: Text("Sicherheitsabstand"),
              onPressed: () => Navigator.pushNamed(context, '/distance'),
            ),
            RaisedButton(
              child: Text("Smartphone Desinfektion"),
              onPressed: () => Navigator.pushNamed(context, '/smartdes'),
            ),
            RaisedButton(
              child: Text("Niesen / Husten"),
              onPressed: () => Navigator.pushNamed(context, '/sneeze'),
            ),
            RaisedButton(
              child: Text("Hande nicht im Gesicht"),
              onPressed: () => Navigator.pushNamed(context, '/handsface'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
