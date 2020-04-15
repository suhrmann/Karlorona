import 'package:flutter/material.dart';
import 'package:Karlo/activities/designed-button.dart';
import 'package:Karlo/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';
import '../activity-start-button.dart';

class YogaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Mache Yoga, Genieße die Natur, Meditiere oder entspanne Dich!!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.yoga,
                  healthscore: 20,
                  hygienescore: 0,
                  psychscore: 40),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleYogaIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_yoga'),
            ),
          ],
        ),
      ),
    );
  }
}
