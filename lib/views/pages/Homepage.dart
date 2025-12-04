import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/HeroWidget.dart';
import 'package:flutter_application_1/widgets/container_widget.dart' show ContainerWidget;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 12,),
          HeroWidget(),
          SizedBox(height: 12),
          Column(
            children: 
              List.generate(5, (index) {
                return ContainerWidget(
                  title: "Jhay",
                  description: index.toString(),
                );
              }),
            
          ),
        ],
      ),
    );
  }
}
