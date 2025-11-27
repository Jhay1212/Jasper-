import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  String confirmedPw = "";
  @override
  void initState() {
    usernameController.text = "";
    passwordController.text = "";
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Lottie.asset("assets/lotties/Login.json"),
            ),
            SizedBox(height: 50),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onEditingComplete: () {
                setState(() {
                  print('asda');
                });
              },
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onEditingComplete: () {
                setState(() {
                  print('asda');
                })

                ;
              },
            ),

            FilledButton(
              onPressed: () {
                onLoginPress(context, passwordController.text);
              },
              child: FittedBox(
                child: Text("Login", style: KTextStyle.primaryText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void onLoginPress(BuildContext context, String password) {
  if ("123" == password) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WidgetTree();
        },
      ),
      (route) => false
    );
  }
}
