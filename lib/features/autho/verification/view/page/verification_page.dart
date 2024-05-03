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
                    padding: const EdgeInsets.only(top: 20.0,left: 20),
                    
                    child: SizedBox(
                      width: context.width,
                      child: Text(
                        "Please Enter your code",
                        style: TextStyle(
                          color: Color(0xff18447E),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  PinCodeTextField(
                    mainAxisAlignment: MainAxisAlignment.center,
                    appContext: context,
                    length: 5,
                    obscureText: true,
                    obscuringCharacter: '*',
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      fieldOuterPadding:
                          EdgeInsets.symmetric(horizontal: context.width / 70),
                      fieldHeight: context.height / 6,
                      fieldWidth: context.width / 6,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Color(0xff18447E),
                      inactiveColor: Color(0xff18447E),
                      activeColor: Color(0xff18447E),
                      selectedFillColor: Colors.white,
                      selectedColor: Color(0xff18447E),
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    controller: cubit.pinCodeController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    onChanged: (value) {},
                  ),
                  IconButton(
                    onPressed: () {
                      cubit.confirm();
                      Navigator.pushReplacementNamed(
                          context, 'home'); // Make sure 'home' is correct
                    },
                    icon: Icon(Icons.done, size: 50),
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
