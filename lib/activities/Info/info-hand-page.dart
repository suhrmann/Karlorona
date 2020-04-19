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
            ListTile(
              leading: Image.asset("assets/images/icons/haendewaschen_schritt1.jpg"),
              title: Text('Halten Sie die Hände zunächst unter fließendes Wasser. Die Temperatur können Sie so wählen, dass sie angenehm ist.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons/haendewaschen_schritt2.jpg"),
              title: Text('Seifen Sie dann die Hände gründlich ein – sowohl Handinnenflächen als auch Handrücken, Fingerspitzen, Fingerzwischenräume und Daumen. Denken Sie auch an die Fingernägel. Hygienischer als Seifenstücke sind Flüssigseifen, besonders in öffentlichen Waschräumen.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons/haendewaschen_schritt3.jpg"),
              title: Text('Reiben Sie die Seife an allen Stellen sanft ein. Gründliches Händewaschen dauert 20 bis 30 Sekunden.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons/haendewaschen_schritt4.jpg"),
              title: Text('Danach die Hände unter fließendem Wasser abspülen. Verwenden Sie in öffentlichen Toiletten zum Schließen des Wasserhahns ein Einweghandtuch oder Ihren Ellenbogen.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons/haendewaschen_schritt5.jpg"),
              title: Text('Trocknen Sie anschließend die Hände sorgfältig ab, auch in den Fingerzwischenräumen. In öffentlichen Toiletten eignen sich hierfür am besten Einmalhandtücher. Zu Hause sollte jeder sein persönliches Handtuch benutzen.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
          ],
        ),
      ),
    );
  }
}