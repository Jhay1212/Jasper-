import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/Courses.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Hero1",
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return Courses();
          }
          ) );
        },

        child: AspectRatio(aspectRatio: 1920/1080,
      child:ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          fit: BoxFit.cover,
          "assets/images/alucard.png",
          color: Colors.redAccent,
          colorBlendMode: BlendMode.darken,
        ),
      )
      )),
    
    );
  }
}
