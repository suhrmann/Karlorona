import 'package:flutter/material.dart';

class DistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Bleib Zuhause!!\nWenn Du raus mußt, halte mindestens einen Abstand von 2 Metern zu anderen Menschen!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {

              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_distance'),
            ),
          ],
        ),
      ),
    );
  }
}