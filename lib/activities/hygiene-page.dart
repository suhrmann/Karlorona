import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/activity-start-button.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

class HygienePage extends StatefulWidget {
  const HygienePage({Key key}) : super(key: key);

  @override
  _HygienePageState createState() => _HygienePageState();
}

class _HygienePageState extends State<HygienePage> {
  Color buttonColor = Colors.orange;
  bool _checkHand = false;
  bool get checkHand => _checkHand;
  set checkHand(bool value) {
    _checkHand = value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Infektionsschutz:"),
            ),
            ActivityStartButton(
              label: "Hände waschen",
              route: '/hand',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getvisibleHandIcon,
              iconfilename: "Icons_Hande_400.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Sicherheitsabstand",
              route: '/distance',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleDistanceIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Smartphone Desinfektion",
              route: '/smartdes',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleSmartDesIcon,
              iconfilename: "Icons_Handy_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Niesen / Husten",
              route: '/sneeze',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleSneezeIcon,
              iconfilename: "Icons_Handy_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Nicht ins Gesicht fassen",
              route: '/handsface',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleHandfaceIcon,
              iconfilename: "Icons_Handy_400px.png",
              color: buttonColor,
            ),
          ],
        ),
      ),
    );
  }
}
