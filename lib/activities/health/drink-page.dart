import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../activities/activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';

class DrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Trinke mindestens 1,5 Liter pro Tag!!!",
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.washhands,
                  healthscore: 20,
                  hygienescore: 10,
                  psychscore: 10),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleDrinkIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_drink'),
            ),
          ],
        ),
      ),
    );
  }
}
