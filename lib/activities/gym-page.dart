import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/designed-button.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
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
            Center(
              child: Text(
                  "Mache ein paar anstrengende Übungen, wie Liegestütze. Besitz Du handeln, dann benutze diese."),
            ),
            DoneButton(
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
