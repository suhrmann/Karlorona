import 'package:flutter/material.dart';

class ActivityStartButton extends StatelessWidget {
  bool visibilityStateVariable;
  String label;
  String route;
  String iconfilename;
  Color color;

  ActivityStartButton({
    this.visibilityStateVariable,
    this.label,
    this.route,
    this.iconfilename,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/icons/$iconfilename'),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: color,
                onPressed: () => Navigator.pushNamed(context, route),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: Text(label)),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow[200],
                        ),
                        child: visibilityStateVariable
                            ? Icon(Icons.check)
                            : Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
