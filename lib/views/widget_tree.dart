import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifiers.dart';
import 'package:flutter_application_1/views/pages/Homepage.dart';
import 'package:flutter_application_1/views/pages/Profile.dart';
import 'package:flutter_application_1/views/pages/Settings.dart';
import 'package:flutter_application_1/widgets/navbar.dart';

List<Widget> pages = [
  Home(),
  Profile(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
          title: Text("First App"),
          backgroundColor: Colors.green,
          centerTitle: true,
          leading: BackButton(),
          actions: [
            IconButton(
              onPressed: () {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
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