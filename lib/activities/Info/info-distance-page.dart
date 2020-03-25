import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoDistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityInfotext(
              text: "Um die Verbreitung des Corona-Viruses zu verlangsamen muss man beim Husten und Niesen viele Regeln befolgen. Am besten hält man mindestens einen Meter Abstand zu einer anderen Person und dreht sich beim Husten weg. Außerdem niest man am besten in ein Einwegtaschentuch oder Stofftaschentuch, wenn man diese nicht zur Hand hat, hustet man in die Armbeuge. Einwegtaschentücher nutzt du am besten auch nur einmal und schmeißt es in einen Mülleimer mit Deckel. Stofftaschentücher wäscht du bei 60°C. Nach dem Naseputzen, Niesen oder Husten musst du dir gründlich die Hände waschen.Corona-Erkrankungen werden von Mensch zu Mensch über Tröpfcheninfektion übertragen. Bei der Tröpfcheninfektion gelangt der Krankheitserreger die im Mundraum und Atmungstrakt sind, beim Niesen, Husten, Sprechen durch winzige Speichel-Tröpfchen an die Luft und werden anschließend von einem anderen Menschen eingeatmet bzw. direkt über die Schleimhäute der oberen Luftwege und der Augen aufgenommen, zum Beispiel durch einen Kuss.",
            ),
          ],
        ),
      ),
    );
  }
}