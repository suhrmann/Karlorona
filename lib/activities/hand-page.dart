import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';
import 'activity-start-button.dart';

class HandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        child: 1 == 1
            ? Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Bitte wasche Deine Hände für mindestens 20 Sekunden!",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  //Text("Bitte wasche Deine Hände für mindestens 20 Sekunden!"),
                  RaisedButton(
                    child: Text("Play Sound"),
                    onPressed: () {
                      model.play("haendewaschsongORF.mp3");
                    },
                  ),
                  RaisedButton(
                    child: Text("Stop Sound"),
                    onPressed: () {
                      model.stop();
                    },
                  ),
                  DoneButton(
                    activityToAdd: Activity(
                        activity: Activities.washhands,
                        healthscore: 20,
                        hygienescore: 40,
                        psychscore: 10),
                    onTap: () => ScopedModel.of<MainModel>(context)
                        .setVisibleHandIcon(true),
                  ),
                  RaisedButton(
                    child: Text("Info"),
                    onPressed: () => Navigator.pushNamed(context, '/info_hand'),
                  ),
                ],
              )
            : Container(),
      );
    });
  }
}
