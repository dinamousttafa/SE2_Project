import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project/core/utilis/context_extention.dart';
import 'package:project/features/autho/verification/controller/cubit/verification_cubit.dart';

class verificationPage extends StatelessWidget {
  const verificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: Scaffold(
        body: BlocBuilder<VerificationCubit, VerificationState>(
          builder: (context, state) {
            final VerificationCubit cubit = context.read<VerificationCubit>();
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: SizedBox(
                      width: context.width,
                      child: Text(
                        "Please Verify Your Email!.",
                        style: TextStyle(
                          color: Color(0xff18447E),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                    onPressed: () async {
                      cubit.confirm();
                      if (await FirebaseAuth
                          .instance.currentUser!.emailVerified) {
                        Navigator.of(context).pushReplacementNamed('home');
                      } else {
                        AwesomeDialog(
                                context: context,
                                dialogType: DialogType.warning,
                                animType: AnimType.rightSlide,
                                title: 'Warning',
                                desc: 'Check Your Gmail')
                            .show();
                        return;
                      }
                    },
                    icon: Icon(Icons.done, size: 60),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
