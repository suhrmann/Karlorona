import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class SecondPage extends StatelessWidget {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> _showNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'plain title', 'plain body', platformChannelSpecifics,
        payload: 'item x');
  }

  Future<void> _scheduleNotification() async {
    var scheduledNotificationDateTime =
        DateTime.now().add(Duration(seconds: 5));
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your other channel id',
        'your other channel name',
        'your other channel description');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.schedule(
        0,
        'scheduled title',
        'scheduled body',
        scheduledNotificationDateTime,
        platformChannelSpecifics);
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
                      RaisedButton(
                        child: Text("Schedule Notification"),
                        onPressed: () {
                          _scheduleNotification();
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
