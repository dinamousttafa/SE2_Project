import 'package:flutter/material.dart';
import 'package:project/category/maincategory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF345069),
      body: ListView(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 73,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/logo.jpeg'),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 220,
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  category(
                    imageUrl: 'assets/images/web.jpeg',
                    title: 'Web Aplication',
                    onTap: () {},
                  ),
                  category(
                    imageUrl: 'assets/images/games.jpeg',
                    title: 'Games',
                    onTap: () {},
                  ),
                  category(
                    imageUrl: 'assets/images/mobile.jpeg',
                    title: 'mobile app',
                    onTap: () {},
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
