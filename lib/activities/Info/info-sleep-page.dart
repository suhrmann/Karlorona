import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoSleepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Schlafen und Schlafrythmus....",
            ),
          ],
        ),
      ),
    );
  }
}