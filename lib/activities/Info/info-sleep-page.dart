import 'package:flutter/material.dart';

class InfoSleepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                  "Schlafen und Schlafrythmus....",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center
              ),
            ),
          ],
        ),
      ),
    );
  }
}