import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoDrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Trinke ich genug?\n\"Erwachsene sollen jeden Tag rund 1,5 Liter Wasser trinken. Regelmäßiges Trinken, am besten zu jeder Mahlzeit und auch zwischendurch, schützt den Körper vor Wassermangel.In einigen Situationen benötigt der Körper besonders viel Flüssigkeit, etwa bei großer Hitze, extremer Kälte, Fieber, Erbrechen und Durchfall [...] dann können schon mal zusätzlich 0,5–1,0 Liter Wasser pro Stunde nötig sein.\"\nQuelle: DGE https://www.dge-medienservice.de/wasser-trinken.html\nZweck: “Corona ist ja eine Infektion der Lunge und die Eintrittspforte ist der Nasen- und Rachenraum. [...] Es kommt darauf an, dass die Schleimhäute gut durchblutet und feucht sind. Viel Trinken ist dabei sicherlich nützlich.” -Prof. Dr. med. Martin Halle, Universitätsklinikum der TU München\nQuelle: https://www.sueddeutsche.de/sport/sport-corona-zu-hause-uebungen-fitness-1.4852082?utm_medium=organic&utm_source=facebook&utm_campaign=coronasport_1.4852082",
            ),
          ],
        ),
      ),
    );
  }
}