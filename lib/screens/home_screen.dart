import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkmode}'),
          Divider(),
          Text('Género: ${Preferences.gender}'),
          Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          Divider()
        ],
      ),
      drawer: const SideMenu(),
    );
  }
}
