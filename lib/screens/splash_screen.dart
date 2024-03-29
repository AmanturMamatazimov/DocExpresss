import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(),
                Image.asset(
              'assets/doc.png',
              height: 72.0,
              width: 171.0
                ),

            Text('Добро пожаловать в Doce ',style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
