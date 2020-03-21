import 'package:flutter/material.dart';

import './app-container.dart';
import './pages/first-page.dart';
import './pages/second-page.dart';

void main() => runApp(IchMacheEsRichtigODER());

class IchMacheEsRichtigODER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => AppContainer(
              body: FirstPage(),
            ),
        '/secondpage': (context) => AppContainer(body: SecondPage()),
      },
    );
  }
}
