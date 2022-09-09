import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return const Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Text(
          'COVID-19 \nVaccination Checker',
          style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Dongle'),  
        ),
      ),
    );
  }
}