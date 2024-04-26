import 'package:flutter/material.dart';
import 'package:project/features/autho/forgetPassword/view/component/data_widget.dart';
// ignore: camel_case_types
class forget_pw extends StatefulWidget {
  // ignore: use_super_parameters
  const forget_pw({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _forget_pwState();
  }
}

// ignore: camel_case_types
class _forget_pwState extends State<forget_pw> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: dataWidget(),
    );
  }
}
