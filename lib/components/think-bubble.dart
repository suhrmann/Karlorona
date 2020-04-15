import 'dart:math';

import 'package:flutter/material.dart';
import 'package:Karlo/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

class ThinkBubble extends StatefulWidget {
  @override
  _ThinkBubbleState createState() => _ThinkBubbleState();
}

class _ThinkBubbleState extends State<ThinkBubble> {
  int _diceThrow;

  String _activity = '/hand'; // TODO Implement loading from notification

  @override
  void initState() {
    setState(() {
      _diceThrow = Random().nextInt(6);
    });

    super.initState();
  }

  /// Select and display the icon of the activity.
  Widget _thinkBubbleActivityIcon() {
    switch (this._activity) {
      case '/infect':
        return Image.asset('assets/images/icons/Icons_Hande_400.png');
      break;
      case '/health':
        // TODO
      break;
      case '/psych':
        // TODO
      break;
      case '/hand':
        return Image.asset('assets/images/icons/Icons_Hande_400.png');
      break;
      case '/distance':
        return Image.asset('assets/images/icons/Icons_Abstand_400px.png');
      break;
      case '/smartdes':
        // TODO
      break;
      case '/sneeze':
       // TODO
      break;
      case '/handsface':
        // TODO
      break;
      case '/gym':
       // TODO
      break;
      case '/run':
        return Image.asset('assets/images/icons/Icons_Sport_px.png');
      break;
      case '/walk':
        return Image.asset('assets/images/icons/Icons_Sport_px.png');
      break;
      case '/sleep':
        return Image.asset('assets/images/icons/Icons_Schlafen_400px.png');
      break;
      case '/ventilate':
       // TODO
      break;
      case '/drink':
        // TODO
      break;
      case '/eat':
        return Image.asset('assets/images/icons/Icons_Obst_400px.png');
      break;
        default:
          throw UnimplementedError('Activiy "$_activity" is not implemented.');
    }
  }

  /// Thinking bubble was taped, so now open the corresponding activity.
  _openActivityOfThinkingBubble() {
    if(this._activity != null && this._activity.startsWith('/')) {
      Navigator.pushNamed(context, this._activity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      debugPrint('_thinkBubble -> throwDice: $_diceThrow');

      return _diceThrow < 5
          ? Container()
          : GestureDetector(
              // GestureDetector: On tap -> Open activity
              onTap: () => _openActivityOfThinkingBubble(),
              child: Stack(// Stack: Display an icon over the bubble
                  children: <Widget>[
                // thinking bubble
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset('assets/images/think-cloud_1t1.png'),
                ),

                // Activity icon
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.25,
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: _thinkBubbleActivityIcon(),
                  ),
                )
              ]));
    });
  }
}
