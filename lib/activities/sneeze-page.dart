import 'package:flutter/material.dart';

class SneezePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Wenn Du Niesen oder Husten mußt, dann benutze nicht Deine Hände, sondern die Armbeuge!!!\nBeim Naseputzen nimm ein Papiertaschentuch!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {

              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_sneeze'),
            ),
          ],
        ),
      ),
    );
  }
}