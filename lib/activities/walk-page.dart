import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../model/activity.dart';

class WalkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Gehe Spazieren, schnappe frische Luft und genieße die Natur!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {
                ScopedModel.of<MainModel>(context).addActivity(
                  Activity(
                      activity: Activities.walk,
                      healthscore: 10,
                      hygienescore: 0,
                      psychscore: 10),
                );
                //model.visibleIcon(true);
                //ScopedModel.of<MainModel>(context).setVisibleWalkIcon(true);
              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_gym'),
            ),
          ],
        ),
      ),
    );
  }
}