import 'package:flutter/material.dart';

class DesignedButton extends StatelessWidget {
  Color color;
  Function onPressed;
  Widget child;

  DesignedButton({this.onPressed, this.color, this.child}) {
    if (this.color == null) this.color = Colors.yellow[200];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: color,
        onPressed: () async {
          await onPressed();
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(child: child),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
