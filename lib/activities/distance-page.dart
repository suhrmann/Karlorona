import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/designed-button.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';
import 'activity-start-button.dart';

class DistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Bleib Zuhause!!\nWenn Du raus mußt, halte mindestens einen Abstand von 2 Metern zu anderen Menschen!!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
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
