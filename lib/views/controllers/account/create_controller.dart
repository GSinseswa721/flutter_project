import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcode/sevices/api.dart';
import 'package:qrcode/views/accounts/login_view.dart';
class CreateController extends GetxController{
 
 var loading = false.obs;
 late TextEditingController emailController, passwordController;

 @override
  void onInit() {
    // emailController=TextEditingController();
    // passwordController= TextEditingController();
    super.onInit();
  }

  void callLogin() async{
    loading.value=true;
    if(emailController.text=='' || passwordController.text==''){
      Get.snackbar('validation Error', 'Please Fill all field',
      backgroundColor:Colors.green
      );
      loading.value=false;
    }else{
    
    Get.to(()=>const LoginView());
    }
  }
 
}