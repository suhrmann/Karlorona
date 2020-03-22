import 'package:flutter/material.dart';

class ActivityStartButton extends StatelessWidget {
  bool visibilityStateVariable;
  String label;
  String route;
  String iconfilename;

  ActivityStartButton(
      {this.visibilityStateVariable,
      this.label,
      this.route,
      this.iconfilename});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/icons/$iconfilename'),
            ),
            Row(children: <Widget>[
              Container(child: Text(label)),
              SizedBox(
                width: 5,
              ),
              Container(
                child: Visibility(
                  child: Icon(Icons.check),
                  visible: visibilityStateVariable,
                ),
              ),
            ])
          ],
        ),
        onPressed: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
