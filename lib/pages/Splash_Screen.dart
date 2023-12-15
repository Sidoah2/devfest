import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String str1 = "Give help, Get help";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //   Duration(seconds: 3),
    //   () async {
    //     Navigator.pushAndRemoveUntil(context,
    //         MaterialPageRoute(builder: (context) => LogIn()), (route) => false);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    String str2 = "Give help for someone who deserves \n to get peace";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.white,
                Color.fromARGB(255, 186, 238, 248),
                Color.fromARGB(255, 160, 239, 255),
                Color(0xFF00B9DC)
              ])),
          width: double.infinity,
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 150,
                  left: 60,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundImage: AssetImage("images/Group 69.png"),
                  ),
                ),
                //images/Givet.png
                Positioned(
                    top: 460, left: 80, child: Image.asset("images/Givet.png")),

                Positioned(
                  top: 565,
                  left: 80,
                  child: Text(
                    textAlign: TextAlign.center,
                    "$str1",
                    style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
