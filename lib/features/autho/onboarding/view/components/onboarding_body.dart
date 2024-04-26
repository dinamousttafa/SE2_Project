import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/autho/onboarding/controller/cubit/onboarding_controller_cubit.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.controller});

  final OnboardingControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocProvider(
            create: (context) => controller,
            child: BlocBuilder<OnboardingControllerCubit,
                OnboardingControllerState>(
              builder: (context, state) {
                final controller = context.read<OnboardingControllerCubit>();

                return PageView(
                  controller: controller.pageController,
                  children: List.generate(controller.data.length, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image.asset(
                          controller.data[index].image,
                          height: 300, // Adjust this value as needed
                          width:400,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          controller.data[index].title,
                          style: const TextStyle(
                            fontSize: 30,
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff275282),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Center(
                          // Center the subtitle
                          child: Text(
                            controller.data[index].subTitle,
                            textAlign: TextAlign.center, // Align text to center
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1E3137),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
