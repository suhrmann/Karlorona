import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../activity-headline.dart';
import '../../activities/designed-button.dart';
import '../../activities/done-button.dart';
import '../../model/activity.dart';
import '../../scoped-model/main-model.dart';

class SneezePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ActivityHeadline(
              text: "Wenn Du Niesen oder Husten mußt, dann benutze nicht Deine Hände, sondern die Armbeuge!!!\nBeim Naseputzen benutze ein Papiertaschentuch und wirf es in einen Mülleimer mit Deckel!!",
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              color: Colors.orange,
              activityToAdd: Activity(
                  activity: Activities.sneeze,
                  healthscore: 0,
                  hygienescore: 20,
                  psychscore: 0),
              onTap: () =>
                  ScopedModel.of<MainModel>(context).setVisibleSneezeIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_sneeze'),
            ),
          ],
        ),
      ),
    );
  }
}
