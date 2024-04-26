import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project/core/utilis/context_extention.dart';
import 'package:project/features/autho/verification/controller/cubit/verification_cubit.dart';

class verificationPage extends StatelessWidget {
  const verificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final VerificationCubit cubit = context.read<VerificationCubit>();
          return Scaffold(
            //  appBar: AppBar(backgroundColor: Color.transparent,),
            body: Container(
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
                    height: 30,
                  ),
                  Text(
                    "please Enter your code",
                    style: TextStyle(
                        color: Color(0xff18447E),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 
                    PinCodeTextField(
                      mainAxisAlignment: MainAxisAlignment.center,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
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
                          // fieldOuterPadding: EdgeInsets.all(
                          //  context.width/75),
                          fieldHeight:  context.width/15,
                          fieldWidth: context.height / 15,
                          activeFillColor: Colors.white,
                          inactiveFillColor: Color(0xff18447E),
                          inactiveColor: Color(0xff18447E),
                          activeColor: Color(0xff18447E),
                          selectedFillColor: Colors.white,
                          selectedColor: Color(0xff18447E)),
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
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {},
                    ),
                  
                  IconButton(onPressed: cubit.confirm, icon: Icon(Icons.done,size: 50,)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
