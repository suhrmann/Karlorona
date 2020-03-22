import 'package:flutter/material.dart';
import 'package:Karlorona/activities/activity-start-button.dart';
import 'package:Karlorona/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Aktivitäten",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ActivityStartButton(
              label: "Infektionsschutz",
              route: '/infect',
              visibilityStateVariable: null,
              iconfilename: "Icons_Hande_400.png",
              color: Colors.orange,
            ),
            ActivityStartButton(
              label: "Allgemeine Gesundheit",
              route: '/health',
              visibilityStateVariable: null,
              iconfilename: "Icons_Obst_400px.png",
              color: Colors.lime,
            ),
            ActivityStartButton(
              label: "Psychisches Wohlbefinden",
              route: '/psych',
              visibilityStateVariable: null,
              iconfilename: "Icons_Schlafen_400px.png",
              color: Colors.teal,
            ),
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
