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
      onPressed: () async {
        await ScopedModel.of<MainModel>(context).addActivity(activityToAdd);
        //model.visibleIcon(true);
        await onTap();
        Navigator.pushReplacementNamed(context, '/');
      },
    );
  }
}
