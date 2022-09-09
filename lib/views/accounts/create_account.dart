import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:qrcode/views/controllers/account/create_controller.dart';
import 'package:get/get.dart';
import 'package:qrcode/views/accounts/login_view.dart';

void main() {
  runApp(Register());
}

class Register extends StatelessWidget {
  // This widget is the root of your application.
  

  @override
  Widget build(BuildContext context) {
    
    var ccontroller;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Create Account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Dongle-Bold'),
                        textAlign: TextAlign.left, 
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    const TextField(
                      decoration: InputDecoration(
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
                                  
                          labelText: 'Fullname'), style: TextStyle(fontSize: 14.0 ,),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
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
                                  
                          labelText: 'Email'), style:  TextStyle(fontSize: 14.0 ,),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      // controller: ccontroller.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
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
                          labelText: 'Password'),style: TextStyle(fontSize: 14.0,),
                          
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                      const TextField(
                      // controller: ccontroller.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
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
                          labelText: 'Confirm Password'),style: TextStyle(fontSize: 14.0,),
                          
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                                          
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
      style: ElevatedButton.styleFrom(
        
            ),
      onPressed: () {

                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginView()),
  );
      },
      child: 
      const Text(
        'Sign up',
        style: TextStyle(fontSize: 18),
      ),
                    ),
                  ],
                )),

          ],
        ),
      ),
    );
  }
}