import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:karlorona/pages/about-page.dart';

import './main.dart';

class NotificationManager {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  initNotifications(BuildContext context) async {
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    var initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (payload) =>
            onSelectNotification(payload, context));
  }

  /// Handle a opened notification: Navigate to a page of payload.
  Future onSelectNotification(String payload, BuildContext context) async {
    // There is no payload?
    if (payload == null) {
      debugPrint('Empty payoload; nowhere to navigate');
      return;
    }

    // Navigate
    switch (payload) {
      case '/about':
        debugPrint('Notification: Navigate to $payload');
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutPage()));
        break;
      default:
        debugPrint('Error: Unknown notification payload: ' + payload);
        throw UnimplementedError('Route of notification not defined: $payload');
    }
  }

  /// Handle a received notification
  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    debugPrint('Received local notification: $id - $title - $body - $payload');
  }
}
