import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoMedienPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Info Medienkonsum",
            ),
          ],
        ),
      ),
    );
  }
}