// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devfest/pages/WriteHelp.dart';
import 'package:flutter/material.dart';
// import 'package:readmore/readmore.dart';

class GiveHelpCard extends StatelessWidget {
  String content =
      "The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface";
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF00B9DC)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 0.9,
                        offset: Offset(0, 0.7),
                        spreadRadius: 0)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xFF00B9DC),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Displaced family",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.white),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF00B9DC),
                          radius: 4,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "High urgency",
                          style: TextStyle(
                              color: Color(0xFF00B9DC), fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "A family that got kicked out of their own house by terrorists needs a place to stay."),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "#Palestine",
                        style: TextStyle(
                            color: Color(0xFF00B9DC), fontFamily: "Poppins"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WriteHelp(),
                  ));
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF00B9DC)),
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.06,
              child: const Text(
                "Help",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
