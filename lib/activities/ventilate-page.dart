import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class VentilatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Lüfte mindestens jede Stunde für 5 Minuten Dein Zimmer!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              activityToAdd: Activity(
                  activity: Activities.ventilate,
                  healthscore: 0,
                  hygienescore: 20,
                  psychscore: 0),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleVentilateIcon(true),
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_ventilate'),
            ),
          ],
        ),
      ),
    );
  }
}