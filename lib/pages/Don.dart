import 'package:devfest/pages/Donation.dart';
import 'package:flutter/material.dart';

class Don extends StatelessWidget {
  const Don({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                shape: ContinuousRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(70))),
                toolbarHeight: 70,
                backgroundColor: Colors.white,
                title: Text(
                  "Donation",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xFF00B9DC),
                      fontSize: 30),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Donation(),
                                  ));
                            },
                            child: Image.asset(
                              "images/Group 71.png",
                            ),
                          ),
                          Text(
                            "Donate now!",
                            style: TextStyle(
                                color: Color(0xFF00B9DC),
                                fontSize: 40,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
              ))),
    );
  }
}
