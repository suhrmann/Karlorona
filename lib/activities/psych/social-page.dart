import 'dart:async';

import 'package:flutter/material.dart';
import 'package:Karlorona/activities/designed-button.dart';
import 'package:Karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-model/main-model.dart';
import '../../model/activity.dart';
import '../activity-headline.dart';
import '../activity-start-button.dart';

class SocialPage extends StatefulWidget {
  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
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
                  text: "Wenn, Du Dich einsam fühlst, rufe Deine Freunde an!",
                ),
                //Text("Bitte wasche Deine Hände für mindestens 20 Sekunden!"),
                DesignedButton(
                  child: Text("WhatsApp starten"),
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
                  child: Text("Skype starten"),
                  onPressed: () {
                    model.stop();
                  },
                ),
                DoneButton(
                  color:Colors.orange,
                  activityToAdd: Activity(
                      activity: Activities.social,
                      healthscore: 0,
                      hygienescore: 0,
                      psychscore: 20),
                  onTap: () => ScopedModel.of<MainModel>(context)
                      .setVisibleSocialIcon(true),
                ),
                DesignedButton(
                  child: Text("Info"),
                  onPressed: () => Navigator.pushNamed(context, '/info_social'),
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
