import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/data/notifiers.dart';
import 'package:flutter_application_1/views/pages/Homepage.dart';
import 'package:flutter_application_1/views/pages/Profile.dart';
import 'package:flutter_application_1/views/pages/Settings.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [
  Home(),
  Profile(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          
        ),
        appBar: AppBar(
        
          title: Text("First App"),
          backgroundColor: const Color.fromARGB(255, 54, 103, 250),
          centerTitle: true,
          leading: Builder(
            builder: (context) {
                return IconButton(onPressed: () {
                  Scaffold.of(context).openDrawer();
                }, icon: Icon(Icons.menu)
                );
            },
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final SharedPreferences prefs = await SharedPreferences.getInstance();
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
                await prefs.setBool(KConstants.themeMode, isDarkModeNotifier.value);
              },
              icon: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return Icon(
                    isDarkMode? Icons.light_mode: Icons.dark_mode
                  );
                })
        ),
        IconButton(onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return Settings(title: "Settings", username: "Jhay",);
          },
           )
          );
        }, icon: Icon(Icons.settings))
        ]
          
        ),
        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
          }
        ),
        bottomNavigationBar: Navbar(),
    );
  }
}