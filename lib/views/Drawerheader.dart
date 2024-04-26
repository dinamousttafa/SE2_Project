import 'package:flutter/material.dart';

class Drawerheader extends StatefulWidget {
  State<Drawerheader> createState() => _Drawerheaderstate();
}

class _Drawerheaderstate extends State<Drawerheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffadbccd),
              
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/436-4361990_user-icon-png-person-icon-png-transparent-png.png"),
              ),
            ),
          ),
          Text(
            "user@gmail.com",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
