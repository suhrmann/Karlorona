import 'package:flutter/material.dart';
import 'package:Karlo/activities/designed-button.dart';
import 'package:Karlo/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';

class VentilatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Lüfte mindestens jede Stunde für 5 Minuten Dein Zimmer!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.ventilate,
                  healthscore: 0,
                  hygienescore: 20,
                  psychscore: 0),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleVentilateIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_ventilate'),
            ),
          ],
        ),
      ),
    );
  }
}
