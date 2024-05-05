// ignore_for_file: sort_child_properties_last

import 'dart:js';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/features/autho/login/view/page/login.dart';

// ignore: camel_case_types
class dataWidget extends StatelessWidget {
  dataWidget({super.key});
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Future passwordReset() async {
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim());
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Password Reset Link Sent! check your email"),
              );
            });
      } on FirebaseAuthException catch (e) {
        print(e);
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(e.message.toString()),
              );
            });
      }
    }

    return Stack(
      children: [
        // Add the image to the background of the scaffold
        Center(
          child: Image.asset(
            'assets/images/login.jpg',
            width: screenSize.width,
            height: screenSize.height,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Enter Your Email To Reset',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico', // Applying Pacifico font
                  fontSize: 30,
                  color: Color(0xff104C8E),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF104C8E)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF104C8E)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () async {
                if (emailController.text.isEmpty) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.rightSlide,
                    title: 'Error',
                    desc: "Please Enter Your Email",
                  ).show();
                  return;
                }

                try {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: emailController.text);
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.rightSlide,
                    title: 'Done',
                    desc: 'Your password reset has been sent to your email',
                  ).show();
                } catch (e) {
                  print("Error: $e"); // Log the error for debugging purposes
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error, // Change to error dialog type
                    animType: AnimType.rightSlide,
                    title: 'Error',
                    desc: 'Please enter a valid email',
                  ).show();
                }
              },
              child: const Text(
                'Reset Password',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Color(0xffF6F6F6),
                ),
              ),
              color: const Color(0xFF104C8E),
            ),

            const SizedBox(height: 15),
            MaterialButton(
              child: const Text(
                'Back to login',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Color(0xffF6F6F6),
                ),
              ),
              color: const Color(0xFF104C8E),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          loginPage()), // Correct instantiation of LoginPage
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
