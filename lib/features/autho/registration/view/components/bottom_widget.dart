import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/autho/login/view/page/login.dart';
import 'package:project/features/autho/registration/controller/registration_cubit.dart';
import 'package:project/features/autho/verification/view/page/verification_page.dart';
class BottomNavigationWidget extends StatelessWidget {
  final RegistrationCubit controller;

  const BottomNavigationWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationCubit>.value(
      value: controller,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff18447E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                     controller.onPressedConfirmButton() ;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => verificationPage()),
                        );
                    },
                    icon: const Icon(
                      Icons.verified_user,
                      color: Color(0xffF6F5F3),
                    ),
                    label: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 16.0,
                        color: Color(0xffF6F5F3),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you have an account already?',
                      style: TextStyle(fontFamily: 'Pacifico'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loginPage()),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          color: Color(0xff18447E),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
