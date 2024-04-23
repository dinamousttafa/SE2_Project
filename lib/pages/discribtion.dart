import 'package:flutter/material.dart';

class discrebtion extends StatelessWidget {
  const discrebtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 66, 93, 146)),
        child: const Icon(
          Icons.camera,
          size: 70,
        ),
      ),
    );
  }
}
