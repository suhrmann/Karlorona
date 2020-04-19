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
              text: "Regelmäßiges Lüften trägt dazu bei, die Menger erregerhaltiger Tröpfchen in der Raumluft zu reduzieren. Damit wird das Ansteckungsrisiko für alle Haushaltsmitglieder verringert. Gerade in den kalten Monaten sollte regelmäßiges Lüften beherzigt werden, da auch der Austausch von trockener Heizungsluft gegen frische Luft gut für unsere Atemwege und unsere Gesundheit ist. Beim empfohlenen Stoßlüften sollten mehrmals täglich die Heizungen heruntergedreht und die Fenster für mehrere Minuten weit geöffnet werden – das ist effektiver als die Fenster über mehrere Stunden anzukippen.\nUnd was passiert mit den erregerhaltigen Tröpfchen, wenn sie durch das Fenster ins Freie gelangt sind? Könnten sie dann nicht auch Menschen auf der Straße anstecken? Theoretisch ja. Allerdings ist für die Infektion eines Menschen eine bestimmte Viruskonzentration nötig. Ein Tröpfchen allein reicht nicht aus. Da draußen quasi unendlich viel Luft vorhanden ist, in der sich die erregerhaltigen Tröpfchen ausbreiten können, ist das Risiko für eine Ansteckung durch die in der Luft verteilten zirkulierenden Tröpfchen minimal. In geschlossenen Räumen hingegen ist die Luft begrenzt und die Konzentration erregerhaltiger Tröpfchen dadurch wesentlich höher – und damit auch das Risiko für eine Infektion. Daher ist es sinnvoll, die Raumluft durch das Lüften regelmäßig auszutauschen, um diese Konzentration zu senken.\n Quelle: https://www.infektionsschutz.de/hygienetipps/barrieremassnahmen.html",
            ),
          ],
        ),
      ),
    );
  }
}