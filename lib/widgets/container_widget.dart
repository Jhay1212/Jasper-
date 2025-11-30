import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title, required this.description});

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(
              this.title,
              style: KTextStyle.primaryText,
            ),
            Text(
              this.description,
              style: KTextStyle.secondaryText,
            )
          ]),
        ),
      ),
    );
  }
}
