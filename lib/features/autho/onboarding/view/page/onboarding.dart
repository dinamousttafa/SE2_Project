// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/autho/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:project/features/autho/onboarding/view/components/onboarding_body.dart';
import 'package:project/features/autho/onboarding/view/components/onboarding_buttons.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider(
      create: (context) => OnboardingControllerCubit(),
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();

          return Scaffold(
              backgroundColor: Color(0xffF5F5F3),
              body: OnboardingBody(
                controller: controller,
              ),
              bottomNavigationBar: OnBoardingButtons(
                controller: controller,
              ));
        },
      ),
    ));
  }
}
