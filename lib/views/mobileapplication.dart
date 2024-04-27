// import 'dart:js';
// import 'package:flutter/gestures.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/views/applicationmodel.dart';

// import 'package:url_launcher/url_launcher.dart';

import 'Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:soft/views/dash.dart';
import 'Drawerheader.dart';
import 'applicationtemplate.dart';
//import 'dash.dart';

class MobileCategory extends StatefulWidget {
  State<MobileCategory> createState() => _MobileCategoryState();
}

class _MobileCategoryState extends State<MobileCategory> {
  var currentPage = DrawerSection.web_applications;
  List<Application> Apps = [
    Application(
        image: 'assets/images/83bfa9ff79b218ff9ae55bdc06ae7ef9.jpg',
        name: "Real Estate App",
        descripation:
            " Explore a vast selection of properties for sale and rent, including houses, apartments, condos, townhomes, commercial spaces,  all conveniently ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/64627a60eb344500d66e11f7399dd02e.jpg',
        name: "Taxi Driver App",
        descripation:
            "Access a centralized dashboard that provides real-time information about your earnings, trip history, ratings, and performance metrics. ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/840f8942ed15e99016eb1a32bcd17b4c.jpg',
        name: "Cloud Storage App",
        descripation:
            "Safeguard your files with end-to-end encryption and advanced security protocols, protecting your data from unauthorized access and cyber threats.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/f53a1d7730bc92c3b2a492ff09e9fafa.jpg',
        name: "Cooking App",
        descripation:
            "Explore thousands of recipes curated by professional chefs and culinary experts, covering a variety of cuisines, dietary preferences, and occasions.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/0d1f2b7c74b296abf5d4871c487b4364.jpg',
        name: "Beauty Skincare app",
        descripation:
            "Access a library of beauty tips, tutorials, and how-to guides created by professional makeup artists, hairstylists, and skincare experts, covering a wide range of topics ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/dbe69aff6e955287c967579ff38b5ec1.jpg',
        name: "Digital Store App",
        descripation:
            "Extensive Digital Catalog: Explore a vast selection of digital products and services from leading developers, publishers, and creators, covering a wide range of categories and genres.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/5b517c932a4a1b3a6c0fdfebae21ff37.jpg',
        name: "Smart Home App",
        descripation:
            "Centralized Control: Control all your smart devices from one easy-to-use app, r away.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/a3f7af5a60b6981326c017d2e0e547e8.jpg',
        name: "Shop Store App",
        descripation:
            "Trip Planning Tools: Plan your itinerary effortlessly with our trip planning tools, including interactive maps",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Mobile Applications",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout_outlined),
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
        SizedBox(height: 8),
        Container(
          height: 50,
          width: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffadbccd),
            ),
            onPressed: () {},
            child: Text(
              "Request",
              style: TextStyle(fontSize: 18, color: Colors.black),
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
