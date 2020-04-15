import 'package:flutter/material.dart';
import '../../activities/designed-button.dart';
import 'package:Karlo/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';

class EatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Achte auf eine ausgewogene Ernährung mit Obst und Gemüse!!",
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.washhands,
                  healthscore: 20,
                  hygienescore: 0,
                  psychscore: 20),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleEatIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_eat'),
            ),
          ],
        ),
      ),
    );
  }
}
