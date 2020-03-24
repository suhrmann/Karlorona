import 'package:flutter/material.dart';

class InfoSleepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Schlafen und Schlafrythmus....",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}