// ignore_for_file: prefer_const_constructors, unused_local_variable, use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project/features/autho/onboarding/model/OnboardingModel.dart';
import 'package:project/features/autho/registration/view/page/registration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();

  void onChangeToNext() {
    pageController.nextPage(
        duration: Duration(seconds: 1), curve: Curves.linear);
  }

  Future<void> onCallSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const RegestrationPage(),
      ),
    );
  }

  List data = [
    OnboardingModel(
        image: 'assets/images/11.jpg',
        title: ' Embark on your PolyVerse Journey',
        subTitle:
            " Explore a universe of possibilities with PolyVerse, your all-in-one platform for web applications, mobile apps, and games. Whether you're a developer, gamer or entrepreneur, PolyVerse has something for you."),
    OnboardingModel(
        image: 'assets/images/boarding1.jpg',
        title: 'Discover New Horizons',
        subTitle:
            "Dive into a world of creativity and innovation. Discover a diverse range of web applications, mobile apps, and games tailored to your interests. With PolyVerse, the possibilities are endless."),
    OnboardingModel(
        image: 'assets/images/onbarding3.jpg',
        title: 'Connect and Thrive',
        subTitle:
            "Join a vibrant community of creators and enthusiasts. Connect with like-minded individuals, collaborate on projects, and share your passion for technology and gaming. With PolyVerse, you're part of something bigger."),
  ];
}
