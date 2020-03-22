import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'activity-start-button.dart';

class HealthPage extends StatefulWidget {

  const HealthPage({ Key key }) : super(key: key);

  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Allgemeine Gesundheit:"),
            ),

            ActivityStartButton(
              label: "Spaziergang",
              route: '/walk',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getvisibleWalkIcon,
              iconfilename: "Icons_Hande.png",
            ),
            ActivityStartButton(
              label: "Kraftübungen",
              route: '/gym',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleGymIcon,
              iconfilename: "Icons_Abstand.png",
            ),
            ActivityStartButton(
              label: "Ausdauerübungen",
              route: '/run',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleRunIcon,
              iconfilename: "Icons_Handy.png",
            ),
            ActivityStartButton(
              label: "Schlafen",
              route: '/sleep',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleSleepIcon,
              iconfilename: "Icons_Obst.png",
            ),
            ActivityStartButton(
              label: "Lüften",
              route: '/ventilate',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleVentilateIcon,
              iconfilename: "Icons_Schlagen.png",
            ),
            ActivityStartButton(
              label: "Trinken",
              route: '/drink',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleDrinkIcon,
              iconfilename: "Icons_Obst.png",
            ),
            ActivityStartButton(
              label: "Obst / Gemüse essen",
              route: '/eat',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleEatIcon,
              iconfilename: "Icons_Schlagen.png",
            ),


            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
