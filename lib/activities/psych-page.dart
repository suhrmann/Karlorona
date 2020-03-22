import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'activity-start-button.dart';

class PsychPage extends StatelessWidget {
  Color buttonColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Psychisches Wohlbefinden:"),
            ),


            ActivityStartButton(
              label: "Spaziergang",
              route: '/social',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getvisibleWalkIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Medienkonsum",
              route: '/gym',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleGymIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Yoga",
              route: '/run',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleRunIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Alltag strukturieren",
              route: '/sleep',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleSleepIcon,
              iconfilename: "Icons_Schlafen_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Tagesziel",
              route: '/ventilate',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleVentilateIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
