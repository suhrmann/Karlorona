import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
            ),
            RaisedButton(
              child: Text("Go to Quiz!"),
              onPressed: () => Navigator.pushNamed(context, '/quiz'),
            ),
            RaisedButton(
              child: Text("Go to MascotPage!"),
              onPressed: () => Navigator.pushNamed(context, '/mascot'),
            ),
            RaisedButton(
              child: Text("Go to ActivityPage!"),
              onPressed: () => Navigator.pushNamed(context, '/activity'),
            ),
            RaisedButton(
              child: Text("Go to AboutPage!"),
              onPressed: () => Navigator.pushNamed(context, '/about'),
            ),
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
