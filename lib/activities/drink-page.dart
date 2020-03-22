import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/designed-button.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

import 'done-button.dart';

class DrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Drinke mindestens 2 Liter pro Tag!!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
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
