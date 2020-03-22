import 'package:flutter/material.dart';

class InfoGymPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Bewegung (Spazieren, Gymnastik, Übungen für zu Hause)\n-Bei Fieber (>38,5 °C) auf keinen Fall Sport machen!\n-Bewege ich mich genug?\n\"Einfache Übungen, dreimal sieben Minuten am Tag, ein kleines Programm, das jeder umsetzen kann, das ist meine Empfehlung. Die Ausdauer ist aber die wichtigste Komponente, weil sie den Puls hochtreibt und schon durch die schnellere Atmung die Lungenbelüftung begünstigt.\"\n-Prof. Dr. med. Martin Halle, Universitätsklinikum der TU München\n-Zweck: Sportliche Aktivität führt zu erhöhter Herz-Kreislauf-Zirkulation, dadurch kommen Immunzellen häufiger zur infizierten Lunge bei einer Covid 19 Erkrankung. Bei Inaktivität “werden [...] die Lungen nur zu zwei Dritteln belüftet, die unteren Anteile nicht. Wenn die Lunge nicht belüftet ist, wird sie auch nicht durchblutet. Kommen nun die Immunzellen da nicht hin, kann sich Schleim in diesen nicht belüfteten Partien der Lunge absetzen. Das erhöht die Infektionsgefahr. Meist ist eine Infektion eine Kombination aus Viren und Bakterien, die sich dann nachfolgend auf die von den Viren geschädigten Stellen der Lunge draufsetzen, deshalb ist es total wichtig, dass die Lunge immer gut belüftet ist, weil sie dann auch gut durchblutet ist. Das sind die wesentlichen Faktoren, warum Bewegung und körperliche Aktivität so wichtig sind [...]",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}