import 'package:flutter/material.dart';
import 'package:Karlorona/activities/designed-button.dart';
import 'package:Karlorona/activities/done-button.dart';
import 'package:Karlorona/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../model/activity.dart';

class WalkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Gehe Spazieren, schnappe frische Luft und genieße die Natur!!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
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
