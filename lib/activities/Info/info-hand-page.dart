import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoHandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Schmutz und auch Krankheitskeime abwaschen – das klingt einfach. Richtiges Händewaschen erfordert aber ein sorgfältiges Vorgehen. Häufig werden die Hände beispielsweise nicht ausreichend lange eingeseift und insbesondere Handrücken, Daumen und Fingerspitzen vernachlässigt. Wasche deine Hände am besten so:",
            ),
          ],
        ),
      ),
    );
  }
}