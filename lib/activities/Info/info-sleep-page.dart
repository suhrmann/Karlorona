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
              text: "Ausreichend Schlaf ist eine tragende Säule für die menschliche Gesundheit. Sowohl der Körper als auch die Psyche ist eine lange ungestörte Ruhephase essenziell, um gesund und leistungsfähig zu bleiben. „Ruhe“ bedeutet aber nicht, dass in dieser Zeit nichts passiert – das Gegenteil ist der Fall! Während wir friedlich schlummern, laufen in unserem Gehirn komplexe Prozesse ab, die bis heute nicht vollständig verstanden sind. Wichtig sind sie aber in jedem Fall, denn zahlreiche Studien haben gezeigt, dass unzureichender oder gestörter Schlaf sich negativ auf die Gesundheit auswirkt. Langfristig steigt beispielsweise das Risiko für Herz-Kreislauf-Erkrankungen wie Bluthochdruck oder die Koronare Herzkrankheit, Diabetes, Übergewicht, Demenz und Depression. Auch das Immunsystem leidet, wenn man zu wenig oder schlecht schläft – damit steigt das Risiko, sich an Infektionskrankheiten anzustecken. Daher ist es in der Erkältungszeit oder während der Corona-Pandemie besonders wichtig, ausreichend zu schlafen, um sein Abwehrsystem fit zu halten.\n\nWie viel Schlaf ein Mensch braucht, ist individuell und auch altersabhängig sehr unterschiedlich. Die meisten jungen Erwachsenen benötigen 7-9 Stunden Schlaf, um sich fit zu fühlen. Manche (wenige) kommen aber auch mit 4 Stunden aus, andere brauchen 10 Stunden. Das Schlafbedürfnis verändert sich auch im Laufe des Lebens. Kinder und Jugendliche brauchen mehr Schlaf, ältere Menschen häufig weniger. Auch in bestimmten Situationen, z.B. bei Krankheit oder Stress, kann sich das Schlafbedürfnis phasenweise verändern, da der Körper in solchen anstrengenden Phasen mehr Regenerationszeit benötigt. Daher ist es wichtig, immer wieder in den eigenen Körper hineinzuhören und den aktuellen Bedürfnissen nachzukommen, um gesund und leistungsfähig zu bleiben.\n\nQuelle: Fortschritte der Psychotherapie, Band 7 Schlafstörungen",
            ),
          ],
        ),
      ),
    );
  }
}