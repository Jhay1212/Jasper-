import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/HeroWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          HeroWidget(),
          Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Six Seven", style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
