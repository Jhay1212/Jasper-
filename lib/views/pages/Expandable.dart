import 'package:flutter/material.dart';

class Expandable extends StatelessWidget {
  const Expandable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.orange)),
          Flexible(
            child: Container(
              color: Colors.greenAccent,
              child: Text("tesasdasdadadt"),
            ),
          ),
          Row(
            
            children: [
            Flexible(child: Text("Test")),
            Expanded(child: Container(color: Colors.pinkAccent, height: 12,))
            
          ],)
        ],
      ),
    );
  }
}
