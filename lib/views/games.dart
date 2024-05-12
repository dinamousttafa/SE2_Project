// import 'dart:js';
// import 'package:flutter/gestures.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:project/pages/dashboard.dart';
import 'package:project/pages/requestPage.dart';
import 'package:project/views/applicationmodel.dart';

import 'Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Drawerheader.dart';
import 'applicationtemplate.dart';

class gamesCategory extends StatefulWidget {
  State<gamesCategory> createState() => _gamesCategoryState();
}

class _gamesCategoryState extends State<gamesCategory> {
  var currentPage = DrawerSection.web_applications;
  List<Application> Apps = [
    Application(
        image: 'assets/images/0be214e80edcd1a2c6ae30e4459fae7d.jpg',
        name: "Free Fire App",
        descripation:
            "Explore a diverse collection of games ranging from classic arcade favorites to cutting-edge, multiplayer showdowns. With new titles added regularly, boredom is simply not an option. ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/14c9ba29f5d27da98cdcd12edba318cb.jpg',
        name: "Bang Bang App",
        descripation:
            "Discover games tailored to your interests and gaming history. Our intuitive recommendation system ensures you always find something you love. ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/90f2cbe114ed7244a6cb9075ffa9b2e7.jpg',
        name: "Shadow Fight App",
        descripation:
            "Connect with friends and fellow gamers from around the globe. Compete head-to-head, team up for cooperative missions, or simply chat about your favorite gaming moments.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/412723bda73d8bdbdcd56faa47a12404.jpg',
        name: "Agent Hunt App",
        descripation:
            "Strive for greatness and climb to the top of the leaderboards. Unlock achievements, collect rewards, and showcase your skills to the world..",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/0be214e80edcd1a2c6ae30e4459fae7d.jpg',
        name: "World War App",
        descripation:
            "No internet? No problem! Enjoy select games offline, perfect for long commutes or those moments when Wi-Fi is scarce.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/c47694d584c6c03ee4d53eab3dd7e874.jpg',
        name: "Sniper3D App",
        descripation:
            "Tailor your gaming experience with customizable settings, controls, and themes. Make the app truly yours.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/f58109befb82bea349259655f0669158.jpg',
        name: "Blood Strike App",
        descripation:
            "Stay tuned for exciting events, challenges, and updates that keep the excitement alive. There's always something new waiting for you",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/24b71665af23a9cd1beab3166fbafb1f.jpg',
        name: "MetalStorm App",
        descripation:
            "Strive for greatness and climb to the top of the leaderboards. Unlock achievements, collect rewards, and showcase your skills to the world.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "Games",
            style: TextStyle(
             fontSize: 22, fontWeight: FontWeight.bold),
            ),
        ),
       
        actions: [
          IconButton(
           onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return dashboard();
              }));
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: ListView(children: [
        Apptemplate(app: Apps[0]),
        Apptemplate(app: Apps[1]),
        Apptemplate(app: Apps[2]),
        Apptemplate(app: Apps[3]),
        Apptemplate(app: Apps[4]),
        Apptemplate(app: Apps[5]),
        Apptemplate(app: Apps[6]),
        Apptemplate(app: Apps[7]),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
            onPressed: () {
              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>requestPage()),
                            );
            },
            
            child: Text(
              "Request",
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 2),
      ]),
      drawer: Drawer(
        semanticLabel: null,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Drawerheader(),
                Drawerlist(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
