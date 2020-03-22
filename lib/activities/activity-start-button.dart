import 'package:flutter/material.dart';

class ActivityStartButton extends StatelessWidget {
  bool visibilityStateVariable;
  String label;
  String route;

  ActivityStartButton({this.visibilityStateVariable, this.label, this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              child: Icon(Icons.check),
              visible: visibilityStateVariable,
            ),
            Text(label),
          ],
        ),
        onPressed: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
