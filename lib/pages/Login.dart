// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devfest/Services/Auth.dart';
import 'package:devfest/pages/ForgotPassword.dart';
import 'package:devfest/pages/SignUp.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  var emailcntrl = TextEditingController();

  var passwordcntrl = TextEditingController();
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: const Text(
                              "Email address",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFF00B9DC)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 8),
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
                                    suffixIcon:
                                        Image.asset("images/path1768 2.png"),
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
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 8),
                            child: const Text(
                              "Password",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  color: Color(0xFF00B9DC)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                                controller: passwordcntrl,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    suffixIcon: Image.asset(
                                      "images/path1782 1.png",
                                    ),
                                    hintText: "Password",
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
                            padding: const EdgeInsets.only(right: 50, top: 8),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ForgotPasswrd(),
                                        ));
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(color: Color(0xFF00B9DC)),
                                  ),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          await Auth.ALogIn(
                              context, emailcntrl.text, passwordcntrl.text);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF00B9DC)),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.065,
                          child: const Text(
                            "Log in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
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
                                    builder: (context) => SignUp(),
                                  ),
                                  (route) => false);
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFF00B9DC)),
                            ),
                          )
                        ],
                      )
                    ]),
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
