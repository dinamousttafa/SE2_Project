import 'dart:js';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/views/applicationmodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:soft/views/dash.dart';
import 'Drawerheader.dart';
import 'applicationtemplate.dart';
//import 'dash.dart';

class webCategory extends StatefulWidget {
  State<webCategory> createState() => _webCategoryState();
}

class _webCategoryState extends State<webCategory> {
  var currentPage = DrawerSection.web_applications;
  List<Application> Apps = [
    Application(
        image: 'assets/images/08b3831666831f015bf9ec39704d4292.jpg',
        name: "Weather App",
        descripation:
            "Live Updates: Receive real-time weather updates to stay informed about any sudden changes.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/0b9aed12fe333d1f1fa3348a9222cd22.jpg',
        name: "Ecommerce App",
        descripation:
            "Secure Checkout: Shop with confidence using our secure checkout process and multiple payment options, including credit/debit cards, PayPal, and more.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/7b583ec01a44a83441a8f2c9e3e04f3e.jpg',
        name: "Sleep Tracker App",
        descripation:
            "Sleep Tracking: Track your sleep automatically using your smartphone's sensors or connect to compatible wearables for more accurate data.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/455dbfba94f9d44fd48b6e9a52657b66.jpg',
        name: "Ai Chatpot App",
        descripation:
            "Say goodbye to mundane chores and hello to productivity! Our AI-powered assistant is your personal sidekick, ready to help with scheduling, reminders, and task ",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/2400be898d66d33a63e7b3d2ae275cea.jpg',
        name: "furniture app",
        descripation:
            "Explore a vast selection of furniture and home decor items across multiple categories, including living room, and more.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/708893564d8f3f9189348c73bc99cf0d.jpg',
        name: "Florest App",
        descripation:
            "Plant Care Reminders: Set up personalized plant care reminders, so you never miss watering, fertilizing, or repotting your plants again.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/f29bb7ce05f6b3fde07adfdc36043dc0.jpg',
        name: "Smart Home App",
        descripation:
            "Centralized Control: Control all your smart devices from one easy-to-use app, r away.",
        url: " https://renadsaeed.github.io/TravelAgency-project/"),
    Application(
        image: 'assets/images/f4602bf5c7502694bce408c0c83859e0.jpg',
        name: "Travel Agency App",
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
          "Web Applications",
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
