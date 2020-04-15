import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../model/activity.dart';
import '../../scoped-model/main-model.dart';

class RunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Gehe mindesten einmal pro Woche Joggen oder fahre Fahrrad!!",
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
              onPressed: () => Navigator.pushNamed(context, '/info_gym'),
            ),
          ],
        ),
      ),
    );
  }
}
