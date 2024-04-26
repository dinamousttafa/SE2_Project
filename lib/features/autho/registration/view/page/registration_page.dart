import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/autho/registration/controller/registration_cubit.dart';
import 'package:project/features/autho/registration/view/components/bottom_widget.dart';
import 'package:project/features/autho/registration/view/components/data_widget.dart';
class RegestrationPage extends StatelessWidget {
  const RegestrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationCubit>(
      create: (context) => RegistrationCubit(),
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          RegistrationCubit controller = context.read<RegistrationCubit>();
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/registation.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: DataWidget(
                controller: controller,
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 100,
              child: BottomNavigationWidget(
                controller: controller,
              ),
            ),
            extendBodyBehindAppBar: true,
            extendBody: true,
            backgroundColor: Colors.transparent,
          );
        },
      ),
    );
  }
}
