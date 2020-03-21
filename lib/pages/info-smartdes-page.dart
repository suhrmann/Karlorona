import 'package:flutter/material.dart';

class InfoSmartdesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Wir nutzen unsere Handys im Durchschnitt über 50 mal im Tag, nehmen sie mit ins Bett und zur Toilette und halten es uns bei Anrufen ins Gesicht. Wir waschen uns zwar wegen der Gefahr einer Corona-Infektion häufiger die Hände, aber es gibt noch keinen offiziellen Aufruf die Handyoberflächen zu reinigen. Bis jetzt wurde auch noch keine Infektion über ein Handy festgestellt. Die Möglichkeit einer Infektion kann aber noch nicht ausgeschlossen werden, da laut einer vorab veröffentlichten Studie aus den USA das Coronavirus immerhin bis zu 72 Stunden auf Oberflächen aktiv bleiben kann. Dementsprechend ist eine gute Idee die Handybildschirme und auch Computer- und Laptopbildschirme sowie -tastaturen sauber zu machen.Die effektive Reinigung eines Handydisplays funktioniert durch kreisende Bewegungen mit einem (angefeuchtetes) Mikrofaser-Tuch. Vorsicht ist bei der Reinigung von Kunststoffdisplays geboten, da diese durch scharfe Reinigungsmittel, Glasreiniger oder Alkohol beschädigt werden können. Eine Schutzfolie lässt sich nicht nur feucht abwischen, sondern auch nach längerem Gebrauch auswechseln, dadurch werden auch Krankheitserreger und Schmutz entfernt.Die Computertastaturen und vor allem die Zwischenräume zwischen den Tasten lassen sich mit speziellen antibakteriellen Knetmassen und Druckluftsprays oder Mikrofasertücher in Kombination mit speziellen Reinigungsflüssigkeiten oder -Sprays und auch spezielle Tastatur-Reinigungstücher reinigen.",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}