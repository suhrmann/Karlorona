import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'activity-start-button.dart';
import '../scoped-model/main-model.dart';

class PsychPage extends StatelessWidget {
  final Color buttonColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Psych. Wohlbefinden:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ActivityStartButton(
              label: "Sozialkontakt",
              route: '/social',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getvisibleSocialIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Medienkonsum",
              route: '/medien',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleMedienIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Yoga",
              route: '/yoga',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleYogaIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Alltag strukturieren",
              route: '/daystruct',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleDaystructIcon,
              iconfilename: "Icons_Schlafen_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Tagesziel",
              route: '/goal',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleGoalIcon,
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
