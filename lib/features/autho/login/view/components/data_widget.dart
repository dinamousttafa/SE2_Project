import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/features/autho/login/view/components/custombtn.dart';
import 'package:project/features/autho/login/view/components/customtxtbtn.dart';

class dataWidget extends StatelessWidget {
  dataWidget({Key? key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'PolyVerse',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF144989),
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 42, 41, 44),
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            const SizedBox(height: 20),

            ///email
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              validator: PolyVerseValidation().emailValidator,
              decoration: InputDecoration(
                labelText: 'Please Enter Your Email',
                prefixIcon: const Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 20),
            //password
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: PolyVerseValidation().passwordValidator,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter Your Password',
                prefixIcon: const Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                  Navigator.of(context).pushReplacementNamed('home');
                } on FirebaseAuthException catch (e) {
                  print(context);
                  if (e.code ==e.code) {
                    log('No user found for that email.');
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'invalid email or password.'
                  
                    ).show();

                  } 
                  ///i need to distinguish between them
                  
                  // else if (e.code == 'wrong-password') {
                  //   log('Wrong password provided for that user.');
                  //   AwesomeDialog(
                  //     context: context,
                  //     dialogType: DialogType.error,
                  //     animType: AnimType.rightSlide,
                  //     title: 'Error',
                  //     desc: 'Wrong password provided for that user.',
              
                      
                  //   ).show();
                  
                  // }
                }
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 42, 41, 44),
                        ),
                      ),
                      CustomTextButton(
                        text: 'Sign Up',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, 'registration');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextButton(
                    text: 'Forgot password.',
                    onPressed: () {
                      // Navigate toforget page

                      Navigator.pushReplacementNamed(context, 'forgetPassword');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
