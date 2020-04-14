import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoVentilatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Lüften ist wichtig, damit die Luft ausgetauscht wird und die Schleimhäte nicht austrocknen.",
            ),
          ],
        ),
      ),
    );
  }
}