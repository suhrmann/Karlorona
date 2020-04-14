import 'package:flutter/material.dart';
import 'package:karlorona/pages/welcome-page.dart';
import 'package:scoped_model/scoped_model.dart';
import './scoped-model/main-model.dart';

class AppContainer extends StatefulWidget {
  final Widget body;

  AppContainer({this.body});

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  void initState() {
    ScopedModel.of<MainModel>(context).determineFirstStartup();
    super.initState();
  }

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
                image: AssetImage('assets/images/logos/logo_head.png'),
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

/*
          // DEBUGGING Shit
          Divider(),
          ListTile(
            leading: Icon(Icons.warning),
            title: Text('DEBUGGING'),
            onTap: () => navigateTo('/test_page', context),
          ),
 */
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Karlo"),
      ),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
        return model.isFirstStartup == null
            ? CircularProgressIndicator()
            : model.isFirstStartup ? WelcomePage() : widget.body;
      }),
      drawer: buildDrawer(context),
    );
  }
}
