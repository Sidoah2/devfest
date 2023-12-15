import 'package:devfest/SousPages/GiveHelpCard.dart';
import 'package:flutter/material.dart';

class GiveHelp extends StatelessWidget {
  const GiveHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFF00B9DC),
              )),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Text(
            "Give help",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF00B9DC), fontSize: 30),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return GiveHelpCard();
            },
          ),
        ),
      )),
    );
  }
}
