import 'package:flutter/material.dart';
import 'package:karlorona/activities/designed-button.dart';
import 'package:karlorona/activities/done-button.dart';
import 'package:karlorona/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';

class WalkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Gehe Spazieren, schnappe frische Luft und genieße die Natur!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.walk,
                  healthscore: 20,
                  hygienescore: 05,
                  psychscore: 20),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleWalkIcon(true),
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
