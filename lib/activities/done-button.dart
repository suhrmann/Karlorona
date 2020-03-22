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
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.yellow[200],
        onPressed: () async {
          await ScopedModel.of<MainModel>(context).addActivity(activityToAdd);
          //model.visibleIcon(true);
          await onTap();
          Navigator.pushReplacementNamed(context, '/');
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(child: Text("Erledigt")),
              SizedBox(
                width: 5,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[200],
                  ),
                  child: Icon(Icons.check)),
            ],
          ),
        ),
      ),
    );
  }
}
