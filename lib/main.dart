import 'package:flutter/material.dart';
import 'package:funfacts/providers/themeProvider.dart';
import 'package:funfacts/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
        theme: themeProvider.isDarkModeChecked
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(useMaterial3: true),
        home: MainScreen());
  }
}
