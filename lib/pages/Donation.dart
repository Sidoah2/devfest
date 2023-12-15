import 'package:devfest/pages/ThnkPage.dart';
import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Text(
            "Donation",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF00B9DC), fontSize: 30),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter your card information:",
                style: TextStyle(color: Color(0xFF00B9DC), fontSize: 21),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Color(0xFF4DC4B0),
                            spreadRadius: 0,
                            offset: Offset(0, 1.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Debit card number",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Color(0xFF4DC4B0),
                            spreadRadius: 0,
                            offset: Offset(0, 1.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "MM/YY",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Color(0xFF4DC4B0),
                            spreadRadius: 0,
                            offset: Offset(0, 1.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "CVC",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Color(0xFF4DC4B0),
                            spreadRadius: 0,
                            offset: Offset(0, 1.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "MM/YY",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Color(0xFF4DC4B0),
                            spreadRadius: 0,
                            offset: Offset(0, 1.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: " Donation amount",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThnkPage(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF00B9DC)),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: const Text(
                    "Donate",
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
        ),
      )),
    );
  }
}
