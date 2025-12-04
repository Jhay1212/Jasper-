import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/Expandable.dart';

class Settings extends StatefulWidget {
  const Settings({super.key, required this.title, required this.username});

  final String title;
  final String username;

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 54, 103, 250),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Snackbar"),
                    duration: Duration(seconds: 5),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Click Me"),
            ),

            Divider(color: Colors.greenAccent),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Alert!!!"),
                      content: Text('kiss me!! '),
                      actions: [CloseButton()],
                    );
                  },
                );
              },
              child: Text("Click Me"),
            ),
            Text("Username: ${widget.username}"),
            DropdownButton(
              value: menuItem,
              items: [
                DropdownMenuItem(value: 'e1', child: Text('Item 1')),
                DropdownMenuItem(value: 'e2', child: Text('Item 2')),
                DropdownMenuItem(value: 'e3', child: Text('Item 1')),
              ],

              onChanged: (String? value) {
                menuItem = value;
              },
            ),
            InkWell(
              hoverColor: Colors.greenAccent,
              splashColor: Colors.tealAccent,
              onTap: () {},
              child: Container(width: 300, height: 200, color: Colors.grey),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Expandable();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent,
                foregroundColor: Colors.white,
              ),
              child: Text("Expandable Page"),
            ),
          ],
        ),
      ),
    );
  }
}
