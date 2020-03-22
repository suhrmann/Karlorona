import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class HandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        child: 1 == 1
            ? Column(
                children: <Widget>[
                  Text("Bitte wasche Deine Hände für mindestens 20 Sekunden!"),
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
                  RaisedButton(
                    child: Text("Erledigt"),
                    onPressed: () {
                      ScopedModel.of<MainModel>(context).addActivity(
                        Activity(
                            activity: Activities.washhands,
                            healthscore: 20,
                            hygienescore: 40,
                            psychscore: 20),
                      );
                      //model.visibleIcon(true);
                      ScopedModel.of<MainModel>(context).setVisibleIcon(true);
                    },
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
