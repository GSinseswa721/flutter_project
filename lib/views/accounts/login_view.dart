import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:qrcode/views/accounts/create_account.dart';
import 'package:qrcode/views/controllers/account/login_controller.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lcontroller =Get.put(LoginController());
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // const Expanded(flex: 1, 
            // child: Image(
            //   image: AssetImage("./images/logorbc.png"),
            // )
            // ),
            Container(child: 
            Image.asset('assets/images/logorbc.png',
            height: 100,
            width: 150,
           fit: BoxFit.fitWidth,),
            ),

            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Welcome', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Dongle-Bold'),
                        textAlign: TextAlign.left, 
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    
                    TextField(
                      controller: lcontroller.emailController,
                      decoration: const InputDecoration(
                        filled: true,
                          
                        // fillColor: Colors.grey,
                          prefixIcon: Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1,)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1,)),
                                  
                          labelText: 'Enter your email'), style: const TextStyle(fontSize: 14.0 ,),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: lcontroller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        // fillColor: Colors.grey,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1,)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey)),
                          labelText: 'Enter your Password'),style: const TextStyle(fontSize: 14.0,),
                          
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                         lcontroller.callLogin();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: (Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          
                          height: 40,
                          child: Obx(()=>Center(
                              // ignore: unrelated_type_equality_checks
                              child: lcontroller.loading==true
                                  ? const Text('Logging....')
                                  : const Text('Login', style: TextStyle(color: Colors.white),))),
                        )),
                        const SizedBox(
                      height: 10,
                    ),
                          TextButton(
                  onPressed: (){
                    //forgot password screen
                  },
                 
                  child: const Text('Forgot Password' , style:
                                TextStyle(color: Colors.blue, fontSize: 10.0),),
                ),
                        
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Do not have an Account?',
                          style: TextStyle(fontSize: 10.0),
                        ),
                        const SizedBox(
                          width: 70.0,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Register()),
  );
                          },
                          child: const Text(
                            'Signup',
                            style:
                                TextStyle(color: Colors.green, fontSize: 10.0),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }


}