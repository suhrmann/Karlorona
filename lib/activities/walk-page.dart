import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
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
              child: Text(
                  "Gehe Spazieren, schnappe frische Luft und genieße die Natur!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden

            DoneButton(
              activityToAdd: Activity(
                  activity: Activities.washhands,
                  healthscore: 20,
                  hygienescore: 40,
                  psychscore: 20),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleWalkIcon(true),
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
