import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class SecondPage extends StatelessWidget {

  Future<void> _showNotification() async {
    print('Test: Notification. . . ');
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        child: 1 == 1
          ? Column(
          children: <Widget>[
            Text("Dies ist die zweite Seite!"),

            Row(
              children: <Widget>[
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
            ),

            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Test Notification"),
                  onPressed: () {
                    _showNotification();
                  },
                ),
              ],
            ),
          ],
        )

            : Container(),
      );
    });
  }
}
