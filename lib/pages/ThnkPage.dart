import 'dart:async';

import 'package:flutter/material.dart';

class ThnkPage extends StatefulWidget {
  const ThnkPage({super.key});

  @override
  State<ThnkPage> createState() => _ThnkPageState();
}

class _ThnkPageState extends State<ThnkPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/path5691 1.png",
                height: 200,
              ),
              Text(
                "Thank you",
                style: TextStyle(
                    fontSize: 54,
                    color: Color(0xFF00B9DC),
                    fontFamily: "Quicksand"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
