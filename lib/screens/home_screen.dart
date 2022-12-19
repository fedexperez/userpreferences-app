import 'package:flutter/material.dart';
import 'package:user_preferences/share_preferences/preferences.dart';
import 'package:user_preferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dark Mode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Gender: ${Preferences.gender}'),
            const Divider(),
            Text('Hello ${Preferences.name}'),
            const Divider()
          ],
        ));
  }
}
