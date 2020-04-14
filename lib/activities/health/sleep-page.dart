import 'package:flutter/material.dart';
import 'package:karlorona/activities/designed-button.dart';
import 'package:karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';

class SleepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Schlafe mindestens 7 Stunden und gehe nicht zu spät ins Bett!!",
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.sleep,
                  healthscore: 20,
                  hygienescore: 10,
                  psychscore: 20),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleSleepIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_sleep'),
            ),
          ],
        ),
      ),
    );
  }
}
