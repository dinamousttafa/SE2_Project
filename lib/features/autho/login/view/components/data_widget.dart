import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/features/autho/forgetPassword/view/page/forgetPW.dart';
import 'package:project/features/autho/login/view/components/custombtn.dart';
import 'package:project/features/autho/login/view/components/customtxtbtn.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
import 'package:project/pages/homePage.dart';

class dataWidget extends StatelessWidget {
  dataWidget({Key? key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ///sign in with google function
    Future<void> signInWithGoogle(BuildContext context) async {
      try {
        final GoogleSignIn googleSignIn = GoogleSignIn(
          clientId: 'YOUR_CLIENT_ID.apps.googleusercontent.com',
        );
        final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

        if (googleUser != null) {
          final GoogleSignInAuthentication googleAuth =
              await googleUser.authentication;

          final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );
          await FirebaseAuth.instance.signInWithCredential(credential);

          Navigator.of(context).pushReplacementNamed('home');
        } else {
          print('Google sign-in canceled');
          return;
        }
      } catch (e) {
        print('Error signing in with Google: $e');
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Error',
          desc: 'Failed to sign in with Google. Please try again later.',
        ).show();
      }
    }

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
              child: Padding(
                padding: EdgeInsets.only(left: 120),
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
            ),
            const SizedBox(height: 30),
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

                  if (credential.user!.emailVerified) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  } else {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return verificationPage();
                    }));
                  }
                } on FirebaseAuthException catch (e) {
                  print(context);
                  if (e.code == e.code) {
                    log('No user found for that email.');
                    AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'invalid email or password.')
                        .show();
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
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await signInWithGoogle(context);
                  },
                  style: ElevatedButton.styleFrom(
                    //foregroundColor: Color(0xffF7F7F5),
                    backgroundColor: Color(0xff4B6EC0),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login with Google",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/4.png',
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
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
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegestrationPage();
                    }));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextButton(
                    text: 'Forgot password.',
                    onPressed: () {
                      // Navigate toforget page

                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return forget_pw();
                    }));
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
