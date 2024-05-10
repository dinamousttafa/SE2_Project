import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/category/maincategory.dart';
import 'package:project/views/games.dart';
import 'package:project/views/mobileapplication.dart';
import 'package:project/views/webApplactionsCategory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF345069),
      appBar: AppBar(
        backgroundColor: Color(0xFF345069),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 43,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/logo.jpeg'),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 430,
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                
                children: [
                  category(
                    imageUrl: 'assets/images/web.jpeg',
                    title: 'Web Aplication',
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => webCategory()),
                            );
                          },
                  ),
                  category(
                    imageUrl: 'assets/images/games.jpeg',
                    title: 'Games',
                    onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => gamesCategory()),
                            );
                          },
                  ),
                  category(
                    imageUrl: 'assets/images/mobile.jpeg',
                    title: 'mobile app',
                    onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MobileCategory()),
                            );
                          },
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
