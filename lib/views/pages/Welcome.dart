import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/Homepage.dart';
import 'package:flutter_application_1/views/pages/Login.dart';
import 'package:flutter_application_1/views/pages/Onboarding.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:flutter_application_1/widgets/HeroWidget.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Lottie.asset("assets/lotties/welcome2.json")),
                FittedBox(
                  child: Text("Flutter App l", style: KTextStyle.titleText),
                ),
                 SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.infinity,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.teal,
                      minimumSize: Size(80, 40),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Onboarding();
                          },
                        ),
                      );
                    },
                    child: Text("Get Started"),
                    
                  ),
                ), 
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  child: FilledButton(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
