import 'package:flutter/material.dart';

class InfoEatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Ausgewogene Ernährung z.B. 5 mal Obst und Gemüse am Tag:\nDurch den übermäßigen Konsum von gesättigten Fetten, Transfettsäuren, Zucker und Salz erhöht sich das Risiko in Bezug auf Übergewicht und Adipositas, Herz-Kreislauf-Erkrankungen, Diabetes und bestimmte Arten von Krebs.\nQuelle WHO\n\nGrunderkrankungen wie z.B. Herzkreislauferkrankungen, Diabetes, Erkrankungen des Atmungssystems, der Leber und der Niere sowie Krebserkrankungen scheinen unabhängig vom Alter das Risiko für einen schweren Krankheitsverlauf zu erhöhen.\nQuelle: Robert Koch Institut",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}