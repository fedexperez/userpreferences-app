import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:user_preferences/providers/theme_provider.dart';
import 'package:user_preferences/routes/app_routes.dart';
import 'package:user_preferences/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: ((_) => ThemeProvider(isDarkMode: Preferences.isDarkMode)))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Preferences',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
