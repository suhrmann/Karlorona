import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karlorona/activities/designed-button.dart';
import 'package:karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';
import '../activity-start-button.dart';

class HandPage extends StatefulWidget {
  @override
  _HandPageState createState() => _HandPageState();
}

class _HandPageState extends State<HandPage> {
  bool _showPraise = false;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        child: 1 == 1
            ? Column(
                children: <Widget>[
                  ActivityHeadline(
                    text: "Bitte wasche Deine Hände für mindestens 20 Sekunden!",
                  ),
                  //Text("Bitte wasche Deine Hände für mindestens 20 Sekunden!"),
                  DesignedButton(
                    child: Text("Play Sound"),
                    onPressed: () {
                      model.play("haendewaschsongORF.mp3");
                      Timer timer = Timer(Duration(seconds: 25), () {
                        model.stop();
                        setState(() {
                          _showPraise = true;
                        });
                      });
                    },
                  ),
                  DesignedButton(
                    child: Text("Stop Sound"),
                    onPressed: () {
                      model.stop();
                    },
                  ),
                  DoneButton(
                    color:Colors.orange,
                    activityToAdd: Activity(
                        activity: Activities.washhands,
                        healthscore: 20,
                        hygienescore: 40,
                        psychscore: 10),
                    onTap: () => ScopedModel.of<MainModel>(context)
                        .setVisibleHandIcon(true),
                  ),
                  DesignedButton(
                    child: Text("Info"),
                    onPressed: () => Navigator.pushNamed(context, '/info_hand'),
                  ),
                  _showPraise
                      ? Text(
                          "Sehr gut! Du kannst aufhören!",
                          style: TextStyle(fontSize: 16),
                        )
                      : Container()
                ],
              )
            : Container(),
      );
    });
  }
}
