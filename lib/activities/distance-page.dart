import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../model/activity.dart';

class DistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Bleib Zuhause!!\nWenn Du raus mußt, halte mindestens einen Abstand von 2 Metern zu anderen Menschen!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Erledigt"),
              onPressed: () {
                ScopedModel.of<MainModel>(context).addActivity(
                  Activity(
                      activity: Activities.safetydistance,
                      healthscore: 20,
                      hygienescore: 40,
                      psychscore: 20),
                );
                //model.visibleIcon(true);
                //ScopedModel.of<MainModel>(context).setVisibleHandIcon(true);
              },
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_distance'),
            ),
          ],
        ),
      ),
    );
  }
}