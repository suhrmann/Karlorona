import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class WelcomePage extends StatefulWidget {
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  String chosenLanguage;
  AnimationController _controllerText;
  Animation _animationText;
  AnimationController _controllerDropdown;
  Animation _animationDropdown;
  double margin = 10.0;
  double dropdownMargin = 20.0;
  Color welcomeColor = Colors.grey;

  String dropdownValue;

  Timer timer1;
  Timer timer2;

  @override
  void initState() {
    _controllerText =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animationText = Tween(begin: 0.0, end: 1.0).animate(_controllerText);
    _controllerDropdown =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animationDropdown =
        Tween(begin: 0.0, end: 1.0).animate(_controllerDropdown);
    timer1 = Timer(Duration(milliseconds: 80), () {
      setState(() {
        margin = 30.0;
        welcomeColor = Colors.black87;
      });
    });

    timer2 = Timer(Duration(milliseconds: 1500), () {
      setState(() {
        _controllerDropdown.forward();
        dropdownMargin = 30.0;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    timer1.cancel();
    timer2.cancel();
    _controllerText.dispose();
    _controllerDropdown.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controllerText.forward();
    return Container(
      child: ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
          return ListView(
            children: <Widget>[
              FadeTransition(
                opacity: _animationText,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                  margin: EdgeInsets.all(margin),
                  alignment: Alignment.center,
                  child: Title(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      'Willkommen!',
                      style: TextStyle(
                        color: welcomeColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  //, style: TextStyle,),
                ),
              ),
              FadeTransition(
                opacity: _animationText,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                  margin: EdgeInsets.all(dropdownMargin),
                  alignment: Alignment.center,
                  child: Title(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      "test",
                      style: TextStyle(
                        color: welcomeColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  //, style: TextStyle,),
                ),
              ),
              FadeTransition(
                opacity: _animationDropdown,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                  margin: EdgeInsets.all(dropdownMargin),
                  alignment: Alignment.center,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                        newValue == 'English'
                            ? chosenLanguage = "en"
                            : chosenLanguage = "de";
                      });
                    },
                    items: <String>[
                      'English',
                      'German',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  //, style: TextStyle,),
                ),
              ),
              Container(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: dropdownValue != null
                      ? RaisedButton(
                          onPressed: () async {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text("Los!"),
                        )
                      : Container(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
