import 'package:flutter/material.dart';

import '../activity-infotext.dart';

class InfoDaystructPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Tagesstruktur ist für die psychische Gesundheit wichtig und bei den meisten Menschen fester Bestandteil des Lebens. Durch die aktuellen Beschränkungen kann es zum Verlust der Tagesstruktur komme: durch Homeoffice, Schließung von Betrieben, Kurzarbeit, Schließung von Tagesstätten, Wegfall von Ehrenämtern.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Ziel sollte es sein, eine Struktur in den Tag zu bringen.',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}