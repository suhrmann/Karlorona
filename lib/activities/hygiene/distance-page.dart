import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';

class DistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Bleib bitte Zuhause!!\nWenn Du spazieren gehst, halte mindestens einen Abstand von 1,5 Metern zu anderen Menschen!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.safetydistance,
                  healthscore: 20,
                  hygienescore: 40,
                  psychscore: 0),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleDistanceIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_distance'),
            ),
          ],
        ),
      ),
    );
  }
}
