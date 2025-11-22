import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/Homepage.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:flutter_application_1/widgets/HeroWidget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, 
                  MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                )
                );
              },
              child: Text("Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
