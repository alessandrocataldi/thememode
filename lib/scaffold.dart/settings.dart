import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:thememode/provider/theme_provider.dart';
import 'package:thememode/widget/change_theme_button.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    //  indentify theme mode
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'dark'
        : 'light';
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text("Dark theme"),
            subtitle: Text("Your theme is $text"),
            trailing: const ChangeThemeButtonWidget(),
          ),
        ],
      ),
    );
  }
}
