import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifiers.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable:
    selectedPageNotifier,
     builder: (context, selectedPage, child) {
      return  NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
        selectedIndex: selectedPage,
        onDestinationSelected: (int val) => {
          setState(() {
          print("index ${val}");
            selectedPageNotifier.value = val;
          })
        });
     });
        
  }
}