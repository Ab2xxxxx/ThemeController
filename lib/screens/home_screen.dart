import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_controller/components/box.dart';
import 'package:theme_controller/components/button.dart';
import 'package:theme_controller/theme/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: Provider.of<ThemeProvider>(context).toggleTheme,
          ),
        ),
      ),
    );
  }
}