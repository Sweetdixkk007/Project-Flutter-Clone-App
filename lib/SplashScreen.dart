import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/HomePage1.dart';

void main(){
  runApp(const MaterialApp(home: SplashScreen(),));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage1(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset("images/splashscreen.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
