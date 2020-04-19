import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';

class DaystructPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Strukuriere Deinen Tag mit Mahlzeiten und Routinen. Siehe Dir das Beispiel unten an.",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.daystruct,
                  healthscore: 10,
                  hygienescore: 0,
                  psychscore: 20),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleDaystructIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_daystruct'),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('Tageszeit',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                DataColumn(label: Text('Tätigkeiten',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
              ],
              rows: [
                DataRow(cells:[
                  DataCell(Text('07:00 - 08:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Aufstehen, Frühstücken',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('08:00 - 09:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('30 min Yoga, Zeitung lesen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('09:00 - 10:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Wäsche waschen + Bügeln, Falten',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('10:00 - 11:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Post und Rechnungen bearbeiten',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('11:00 - 12:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Mittagessen zubereiten',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('12:00 - 13:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Mittag essen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('13:00 - 14:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Mittagsschlaf',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('14:00 - 15:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Spazieren',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('15:00 - 16:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Wohnzimmer aufräumen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('16:00 - 17:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Blumenpflege',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('17:00 - 18:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Telefonieren / Skypen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('18:00 - 19:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Abendessen zubereiten',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('19:00 - 20:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Abendessen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('20:00 - 22:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Fernsehen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
                DataRow(cells:[
                  DataCell(Text('22:00 - 23:00',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                  DataCell(Text('Entspannungsübungen + Schlafen',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal))),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
