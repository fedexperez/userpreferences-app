import 'package:flutter/material.dart';

import 'package:user_preferences/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'settings': (BuildContext context) => const SettingsScreen(),
  };
}
