import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/views/games.dart';


import 'webApplactionsCategory.dart';
import 'mobileapplication.dart';

enum DrawerSection {
  web_applications,
  mobile_applictions,
  games,
  logout,
}

class Drawerlist extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      // padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => webCategory()));
            },
            child: SizedBox(
              height: 60,
              child: menuItem(
                "Web Applications",
                Icons.computer_outlined,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MobileCategory()));
            },
            child: SizedBox(
              height: 60,
              child: menuItem(
                "Mobile Applications",
                Icons.mobile_friendly_outlined,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => gamesCategory()));
            },
            child: SizedBox(
              height: 60,
              child: menuItem(
                "Games",
                Icons.games_outlined,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => webCategory()));
            },
            child: SizedBox(
              height: 60,
              child: menuItem(
                "LogOut",
                Icons.logout_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(String title, IconData icon) {
    return Row(
      children: [
        Expanded(
          child: Icon(
            icon,
            size: 20,
            color: Color(0xff0b2241),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
