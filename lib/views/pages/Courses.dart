import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/classes/activity_class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  late Activity activity;
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<Activity> getData() async {
    final url = Uri.parse('https://bored-api.appbrewery.com/random');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception("Failed to load the album");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, AsyncSnapshot snapshot) {
        Widget widget;
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(title: Text("Course"), centerTitle: true),
            body: Column(),
          );
        } else {
          return Center(child: Text(snapshot.toString()));
        }
      },
    );
  }
}
