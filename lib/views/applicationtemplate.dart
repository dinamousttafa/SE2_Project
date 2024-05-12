import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';



import 'applicationmodel.dart';

class Apptemplate extends StatefulWidget {
  State<Apptemplate> createState() => _ApptemplateState();
  Application app;
  Apptemplate({required this.app});
}

class _ApptemplateState extends State<Apptemplate> {
  var _hover = false;
  late final _recoganizer = TapGestureRecognizer()..onTap = _ontap;
  void _ontap() {
    launch(" https://renadsaeed.github.io/TravelAgency-project/");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Color(0xffe5ecf4),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0xff86accb),
                spreadRadius: 0.5,
                offset: const Offset(5, 5),
              ),
              BoxShadow(
                blurRadius: 2,
                color: Color.fromARGB(100, 155, 149, 149),
                spreadRadius: 1,
                offset: const Offset(5, 5),
              ),
            ],
            border: Border.all(
              color: Color(0x2d000000),
              width: 0.7,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 110,
                  height: 120,
                
                  child: Image.asset(
                    widget.app.image,
                   
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Text(
                        widget.app.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 230,
                      child: Text(
                        widget.app.descripation,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "See Application",
                              style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold,
                                color: _hover ? Colors.blue : Colors.black,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              onEnter: (event) => setState(() => _hover = true),
                              onExit: (event) => setState(() => _hover = false),
                              recognizer: _recoganizer,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: RatingBar.builder(
                          itemSize: 16,
                          initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color(0xffe5d225),
                              ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 3),
                          onRatingUpdate: (rating) {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
