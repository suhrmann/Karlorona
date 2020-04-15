import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';

class MedienPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            ActivityHeadline(
              text: "Schaue nicht so viele Nachrichten!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.medien,
                  healthscore: 10,
                  hygienescore: 0,
                  psychscore: 20),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleMedienIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_medien'),
            ),
          ],
        ),
      ),
    );
  }
}
