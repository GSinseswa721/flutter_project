import 'package:qrcode/views/accounts/login_view.dart';
import 'package:qrcode/views/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcode/views/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final scontroller = Get.put(SplashController());
    return GetMaterialApp(
      title: 'QR Code Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Dongle-Bold',
      ),
      debugShowCheckedModeBanner: false,
      // ignore: unrelated_type_equality_checks
      home: Obx(()=>scontroller.splash==true ? const SplashScreen(): const LoginView()),
    );
  }
}
