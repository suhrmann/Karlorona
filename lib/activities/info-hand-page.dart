import 'package:flutter/material.dart';

class InfoHandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Schmutz und auch Krankheitskeime abwaschen – das klingt einfach. Richtiges Händewaschen erfordert aber ein sorgfältiges Vorgehen. Häufig werden die Hände beispielsweise nicht ausreichend lange eingeseift und insbesondere Handrücken, Daumen und Fingerspitzen vernachlässigt. Wasche deine Hände am besten so:",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}