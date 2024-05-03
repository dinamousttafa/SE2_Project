import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/features/autho/registration/controller/registration_cubit.dart';
class DataWidget extends StatelessWidget {
  final RegistrationCubit controller;

  DataWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Create Account",
                    style: TextStyle(
                       color: Color(0xff18447E),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'),
                  ),
                  const Text(
                    "Enter Details To Get Started",
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  //name
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.firstNameController,
                    keyboardType: TextInputType.name,
                    validator: PolyVerseValidation().nameValidate,
                    decoration: decoration.copyWith(
                      prefixIcon:
                          const Icon(Icons.supervised_user_circle_outlined),
                      labelText: 'User Name',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //email form
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.mailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: PolyVerseValidation().emailValidator,
                    decoration: decoration.copyWith(
                      labelText: 'Email Address',
                      hintText: '*******@gmail.com',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //password
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller:  controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: PolyVerseValidation().passwordValidator,
                    obscureText: true,
                    decoration: decoration.copyWith(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //confirm password
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.cPassController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      return PolyVerseValidation().repeatPasswordValidator(
                        value: value,
                        password: controller.passwordController.text,
                      );
                    },
                    obscureText: true,
                    decoration: decoration.copyWith(
                      labelText: 'Confirm Password',
                      prefixIcon: const Icon(Icons.password),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  final InputDecoration decoration = InputDecoration(
    prefixIcon: const Icon(Icons.email_outlined),
    labelText: 'Email Address',
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Color(0xffE3D7A4),
        width: 2,
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff18447E),
        width: 2,
      ),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffE3453E),
        width: 2,
      ),
    ),
  );
}
