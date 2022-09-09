import 'dart:convert';
import 'dart:ui';
import 'package:qrcode/sevices/api.dart';
import 'package:qrcode/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  var loading = false.obs;
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    checkArleadyLogin();
    super.onInit();
  }

  void checkArleadyLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    if (token != null) {
      Get.to(const QRViewExample());
    }
  }

  void callLogin() async {
    loading.value = true;
    if (emailController.text == '' || passwordController.text == '') {
      Get.snackbar('Validation Error', 'Please enter email or password',
          backgroundColor: Colors.orange);
      loading.value = false;
    } else {
      // login
      var data = {
        'username': emailController.text,
        'password': passwordController.text
      };
      var loginResponse = await ApiCall().postData(data, 'token/');
      var res = jsonDecode(loginResponse.body.toString());
      print(res);
      if (loginResponse.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', res['token']);
        prefs.setString('username', res['username']);

        Get.to(() => const QRViewExample());
      } else {
        loading.value = false;
        Get.snackbar('Login Fails', 'Credentials fails , Try it again',
            backgroundColor: Colors.orange);
      }
    }
  }
}
