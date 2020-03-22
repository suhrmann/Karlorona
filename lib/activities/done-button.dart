import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class DoneButton extends StatelessWidget {
  final Activity activityToAdd;
  final Function onTap;

  DoneButton({this.activityToAdd, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Erledigt"),
      onPressed: () {
        ScopedModel.of<MainModel>(context).addActivity(
          Activity(
              activity: Activities.washhands,
              healthscore: 20,
              hygienescore: 40,
              psychscore: 20),
        );
        //model.visibleIcon(true);
        ScopedModel.of<MainModel>(context).setVisibleHandIcon(true);
        Navigator.pop(context);
      },
    );
  }
}
