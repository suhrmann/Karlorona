import 'package:flutter/material.dart';
import 'package:Karlorona/activities/designed-button.dart';
import 'package:Karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class GymPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Mache ein paar anstrengende Übungen, wie Liegestütze. Besitz Du handeln, dann benutze diese.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
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
