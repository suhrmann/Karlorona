import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/activity-start-button.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';


class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Aktivitäten:"),
            ),

            ActivityStartButton(
              label: "Infektionsschutz",
              route: '/infect',
              visibilityStateVariable:
              null,
              iconfilename: "Icons_Hande_400.png",
              color: Colors.orange,
            ),
            ActivityStartButton(
              label: "Allgemeine Gesundheit",
              route: '/health',
              visibilityStateVariable:
              null,
              iconfilename: "Icons_Obst_400px.png",
              color: Colors.lime,
            ),
            ActivityStartButton(
              label: "Psychisches Wohlbefinden",
              route: '/psych',
              visibilityStateVariable:
              ScopedModel.of<MainModel>(context).getVisibleSmartDesIcon,
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
