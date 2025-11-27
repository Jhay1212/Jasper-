import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/Homepage.dart';
import 'package:flutter_application_1/views/pages/Login.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:flutter_application_1/widgets/HeroWidget.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Lottie.asset("assets/lotties/partydance.json")),
              FittedBox(
                child: Text("Flutter App l", style: KTextStyle.titleText),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.teal,
                  minimumSize: Size(80, 40),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
                child: Text("Log in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
