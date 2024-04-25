import 'package:flutter/material.dart';
import 'package:project/category/bookCategory.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            const BoxDecoration(color:Color(0xFF345069)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 140),
          child: Container(child: booking(app_booked: "Application",text2: "Amged",)),
        )
      ),
    );
  }
}
