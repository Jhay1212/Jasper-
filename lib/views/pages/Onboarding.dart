import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/Login.dart';
import 'package:lottie/lottie.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Lottie.asset("assets/lotties/partydance.json"),
            ),
            SizedBox(height: 50),
            Text("jasds", style: KTextStyle.primaryText),
            SizedBox(height: 50),

            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Login();
                  })
                  
                );
              },
              child: FittedBox(
                child: Text("Login", style: KTextStyle.secondaryText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
