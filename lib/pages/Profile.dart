import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var emailcntrl = TextEditingController();

  var phonecntrl = TextEditingController();

  var contrcntrl = TextEditingController();

  bool isread = true;

  int Contributions = 56;

  @override
  Widget build(BuildContext context) {
    emailcntrl.text = "MaryanGasmi@gmail.com";
    phonecntrl.text = "+963589345281";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isread = false;
                });
              },
              icon: Image.asset("images/path3290 1.png"),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/path3310 1.png"),
            ),
          ],
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF00B9DC), fontSize: 30),
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              "images/Ellipse 8.png",
              fit: BoxFit.fill,
              height: 230,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF00B9DC),
                    radius: 80,
                    child: Image.asset(
                      "images/path1002 2 (1).png",
                    ),
                  ),
                  Text(
                    "Maryam Gasmi",
                    style: TextStyle(
                        color: Color(0xFF00B9DC),
                        fontSize: 28,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "Syria",
                    style: TextStyle(
                        color: Color(0xFFBCBCBC),
                        fontSize: 26,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color(0xFF4DC4B0),
                              spreadRadius: 0.3,
                            )
                          ]),
                      child: TextField(
                        readOnly: isread,
                        style: TextStyle(
                            color: Color(0xFF00B9DC),
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold),
                        controller: emailcntrl,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color(0xFF4DC4B0),
                              spreadRadius: 0.3,
                            )
                          ]),
                      child: TextField(
                        readOnly: isread,
                        style: TextStyle(
                            color: Color(0xFF00B9DC),
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold),
                        controller: phonecntrl,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xFF4DC4B0),
                                spreadRadius: 0.3,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "Contributions:  $Contributions",
                            style: TextStyle(
                                color: Color(0xFF00B9DC),
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
