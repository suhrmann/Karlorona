import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget body;

  AppContainer({this.body});

  navigateTo(String route, BuildContext context) {
    Navigator.pop(context); // Close drawer for back-button
    Navigator.pushNamed(context, route);
  }

  buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo_head.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(''), // Only display Carlos
          ),

          // Drawer items
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Kater Karlos'),
            onTap: () => navigateTo('/', context),
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Quiz'),
            onTap: () => navigateTo('/quiz', context),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('Über uns'),
            onTap: () => navigateTo('/about', context),
           ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ich Mache es richtig, ODER?"),
      ),

      body: body,

      drawer: buildDrawer(context),
    );
  }
}
