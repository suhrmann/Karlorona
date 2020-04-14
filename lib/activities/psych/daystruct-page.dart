import 'package:flutter/material.dart';
import 'package:karlorona/activities/designed-button.dart';
import 'package:karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';
import '../activity-start-button.dart';

class DaystructPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Strukuriere Deinen Tag mit Mahlzeiten und Routinen",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.daystruct,
                  healthscore: 10,
                  hygienescore: 0,
                  psychscore: 20),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleDaystructIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_daystruct'),
            ),
          ],
        ),
      ),
    );
  }
}
