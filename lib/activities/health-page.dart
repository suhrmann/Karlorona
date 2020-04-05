import 'package:flutter/material.dart';
import 'package:Karlorona/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'activity-start-button.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({Key key}) : super(key: key);

  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  Color buttonColor = Colors.lime;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Allg. Gesundheit:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ActivityStartButton(
              label: "Spaziergang",
              route: '/walk',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getvisibleWalkIcon,
              iconfilename: "Icons_Sport_px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Kraftübungen",
              route: '/gym',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleGymIcon,
              iconfilename: "Icons_Sport_px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Ausdauerübungen",
              route: '/run',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleRunIcon,
              iconfilename: "Icons_Sport_px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Schlafen",
              route: '/sleep',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleSleepIcon,
              iconfilename: "Icons_Schlafen_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Lüften",
              route: '/ventilate',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleVentilateIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Trinken",
              route: '/drink',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleDrinkIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Obst / Gemüse essen",
              route: '/eat',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleEatIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),

            //Image.asset("assets/images/logos/logo.png"),
          ],
        ),
      ),
    );
  }
}
