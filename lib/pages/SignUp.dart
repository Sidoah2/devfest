// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devfest/Services/Auth.dart';
import 'package:devfest/pages/Login.dart';
import 'package:devfest/pages/index.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var namecntrl = TextEditingController();
  var countrycntrl = TextEditingController();

  var emailcntrl = TextEditingController();

  var passwordcntrl = TextEditingController();

  var confirpasscntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Colors.white,
                      Color.fromARGB(255, 173, 227, 217),
                      Color(0xFF4DC4B0),
                    ])),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 200,
                          child: Image.asset("images/Group 28.png")),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF00B9DC),
                                fontFamily: "Quicksand",
                                fontSize: 34),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
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
                                controller: namecntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Full Name",
                                    hintStyle: const TextStyle(
                                        fontFamily: "Poppinsregular",
                                        color: Color(0xFF90E0EF)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
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
                                controller: countrycntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Country",
                                    hintStyle: const TextStyle(
                                        fontFamily: "Poppinsregular",
                                        color: Color(0xFF90E0EF)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
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
                                controller: emailcntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Email address",
                                    hintStyle: const TextStyle(
                                        fontFamily: "Poppinsregular",
                                        color: Color(0xFF90E0EF)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
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
                                obscureText: true,
                                controller: passwordcntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "password",
                                    hintStyle: const TextStyle(
                                        fontFamily: "Poppinsregular",
                                        color: Color(0xFF90E0EF)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
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
                                obscureText: true,
                                controller: confirpasscntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Confirm password",
                                    hintStyle: const TextStyle(
                                        fontFamily: "Poppinsregular",
                                        color: Color(0xFF90E0EF)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () async {
                              print("object");
                              if (passwordcntrl.text == confirpasscntrl.text) {
                                await Auth.AddUser(
                                    context,
                                    namecntrl.text,
                                    emailcntrl.text,
                                    countrycntrl.text,
                                    passwordcntrl.text,
                                    0);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF00B9DC)),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: const Text(
                                "Sign up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.47,
                                color: Color(0xFF00B9DC),
                                height: 0.6,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                                child: Text(
                                  " Or  ",
                                  style: TextStyle(
                                    color: Color(0xFF00B9DC),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.47,
                                color: Color(0xFF00B9DC),
                                height: 0.6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Index(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF00B9DC),
                                        blurRadius: 2,
                                        spreadRadius: 0.1)
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/Ellipse.png"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Continue with Google",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xFF90E0EF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(color: Color(0xFF90E0EF)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LogIn(),
                                      ),
                                      (route) => false);
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Color(0xFF00B9DC)),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
