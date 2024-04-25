import 'package:flutter/material.dart';

class booking extends StatelessWidget {
 const booking({this.app_booked, this.text2});
  final String? app_booked;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.grey[200], // Change to your desired background color
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 1),
              )
            ],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 0, 0), // Change to your desired border color
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                       Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[200], // Change to your desired color
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 67, 68, 68), // Change to your desired color
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Icon(Icons.app_registration),
                              ),
                            ),
                          ),
                          const SizedBox(width: 18),
                          Text(
                            app_booked!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey[200], // Change to your desired color
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color:
                                    Color.fromARGB(255, 67, 68, 68), // Change to your desired color
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(width: 18),
                          Text(
                            text2!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      
                     
                    ],
                  ),
                ),
                
              ),
          const  Expanded(child:   Icon(
                      Icons.chevron_right_rounded,
                      color: Color(0xFF57636C),
                      size: 24,
                    ),) 
            ],
          ),
        ),
        
      ),
   ] );
  }
}
