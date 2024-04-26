// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project/features/autho/login/view/page/login.dart';

// ignore: camel_case_types
class dataWidget extends StatelessWidget {
  const dataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        // Add the image to the background of the scaffold
        Center(
          child: Image.asset(
            'assets/images/login.jpg',
            width: screenSize.width,
            height: screenSize.height,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Enter Your Email To Reset',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico', // Applying Pacifico font
                  fontSize:30,
                  color: Color(0xff104C8E),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF104C8E)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF104C8E)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Reset Password',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color:Color(0xffF6F6F6),
                ),
              ),
              color: const Color(0xFF104C8E),
            ),
            const SizedBox(height: 15),
            MaterialButton(
  child: const Text(
    'Back to login',
    style: TextStyle(
      fontFamily: 'Pacifico',
      color: Color(0xffF6F6F6),
    ),
  ),
  color: const Color(0xFF104C8E),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => loginPage()), // Correct instantiation of LoginPage
    );
  },
)

          ],
        ),
      ],
    );
  }
}
