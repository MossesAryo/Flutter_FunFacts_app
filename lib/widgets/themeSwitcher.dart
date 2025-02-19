import 'package:flutter/material.dart';
import 'package:funfacts/providers/themeProvider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Theme Mode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Switch(
                  value: themeProvider.isDarkModeChecked,
                  onChanged: (value) {
                    

                    themeProvider.updateMode(darkMode: value);
                   
                  }),
              SizedBox(
                width: 20,
              ),
              Text(themeProvider.isDarkModeChecked ? "Dark Mode" : "Light Mode")
            ],
          )
        ],
      ),
    );
  }
}
