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
    return SingleChildScrollView(
      child: Scaffold(
        body:

        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 230,),
              Center(
                child: (
                    Image.asset(
                  'assets/doc.jpg',
                  height: 171.0,
                  width: 72.0
                    )

                ),
      ),
              SizedBox(height: 230,),
              Text('Добро пожаловать в Doce ',style: TextStyle(fontSize: 16),),
              SizedBox(height: 161),
            ],
          ),
        ),
      ),
    );
  }
}
