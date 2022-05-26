import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:thememode/provider/theme_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //  indentify theme mode
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'Dark Theme'
        : 'Light Theme';
    Icon iconMode =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Icon(Icons.dark_mode)
            : const Icon(Icons.light_mode);
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: iconMode,
            title: const Text("Dark theme"),
            subtitle: Text("Your theme is $text"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Title"),
            subtitle: Text("Subtitle"),
            leading: Icon(Icons.favorite),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            title: const Text("Title"),
            subtitle: const Text("Subtitle"),
            leading: const Icon(Icons.favorite),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("Button"),
            ),
          ),
        ],
      ),
    );
  }
}
