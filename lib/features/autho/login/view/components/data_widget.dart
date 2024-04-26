import 'package:flutter/material.dart';
import 'package:project/features/autho/forgetPassword/view/page/forgetPW.dart';
import 'package:project/features/autho/login/view/components/custombtn.dart';
import 'package:project/features/autho/login/view/components/customtf.dart';
import 'package:project/features/autho/login/view/components/customtxtbtn.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';

class dataWidget extends StatelessWidget {
  const dataWidget({Key? key});

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
        padding: const EdgeInsets.symmetric(vertical: 20),
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
            CustomTextField(hintText: 'Email'),
            const SizedBox(height: 20),
            CustomTextField(hintText: 'Password', obscureText: true),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () {},
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegestrationPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextButton(
                    text: 'Forgot password.',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => forget_pw()),
                      );
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
