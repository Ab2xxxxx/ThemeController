import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_controller/screens/home_screen.dart';
import 'package:theme_controller/theme/theme.dart';
import 'package:theme_controller/theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

