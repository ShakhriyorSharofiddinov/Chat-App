import 'package:chat_app/main_provider.dart';
import 'package:chat_app/screens/welcome/welcome_screen.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeModeProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeModeProvider>(context, listen: false);
    return Consumer<ThemeModeProvider>(builder: (context, data, child) {
      return MaterialApp(
        title: 'The Flutter Way',
        debugShowCheckedModeBanner: false,
        theme: themeMode.getThemeDark()
            ? darkThemeData(context)
            : lightThemeData(context),
        home: WelcomeScreen(),
      );
    });
  }
}
