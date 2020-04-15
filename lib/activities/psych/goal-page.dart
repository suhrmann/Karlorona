import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';

class GoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Setzt Dir ein Tagesziel!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.goal,
                  healthscore: 0,
                  hygienescore: 0,
                  psychscore: 30),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleGoalIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_goal'),
            ),
          ],
        ),
      ),
    );
  }
}
