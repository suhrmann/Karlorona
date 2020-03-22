import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class SneezePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Wenn Du Niesen oder Husten mußt, dann benutze nicht Deine Hände, sondern die Armbeuge!!!\nBeim Naseputzen nimm ein Papiertaschentuch!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              activityToAdd: Activity(
                  activity: Activities.sneeze,
                  healthscore: 0,
                  hygienescore: 20,
                  psychscore: 0),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleSneezeIcon(true),
            ),
            RaisedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_sneeze'),
            ),
          ],
        ),
      ),
    );
  }
}