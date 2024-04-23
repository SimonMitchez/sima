import 'package:flutter/material.dart';
import 'package:sima_app1/screens/AccountCreation/loginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffB81736),
            Color(0xff281537),
          ]),
        ),
        child: Padding(padding: const EdgeInsets.only(top: 60.0,left: 19),
        child: Text('Hello\nSign in!',style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),)
    );
  }
}