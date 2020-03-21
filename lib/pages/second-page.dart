import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        child: 1 == 1
            ? Row(
                children: <Widget>[
                  Text("This is the second page!"),
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
                ],
              )
            : Container(),
      );
    });
  }
}
