import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../scoped-model/main-model.dart';
import '../activity-headline.dart';
import '../../model/activity.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';

class GymPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Mache ein paar anstrengende Übungen, wie Liegestütze. Besitz Du Handeln, dann benutze diese.",
            ),
            DoneButton(
              color: Colors.lime,
              activityToAdd: Activity(
                  activity: Activities.eatVeggies,
                  healthscore: 20,
                  hygienescore: 0,
                  psychscore: 20),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleGymIcon(true),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden

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
