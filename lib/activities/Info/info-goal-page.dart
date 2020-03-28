import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoGoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Info Tagesziel",
            ),
          ],
        ),
      ),
    );
  }
}