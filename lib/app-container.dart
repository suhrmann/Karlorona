import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget body;

  AppContainer({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IchMacheEsRichtigODER?"),
      ),
      body: body,
    );
  }
}
