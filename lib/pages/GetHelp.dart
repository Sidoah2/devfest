import 'package:flutter/material.dart';

class GetHelp extends StatefulWidget {
  @override
  State<GetHelp> createState() => _GetHelpState();
}

class _GetHelpState extends State<GetHelp> {
  int nmchar = 0;

  var subjectcntrl = TextEditingController();

  var prblmcntrl = TextEditingController();
  bool isenable = true;
  String dropdoneval = "one";
  @override
  Widget build(BuildContext context) {
    nmchar = prblmcntrl.text.characters.length;
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
            "Get help",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF00B9DC), fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            child: Column(children: [
              Text(
                "Please provide information about what kind of help you need :",
                style: TextStyle(
                    color: Color(0xFF00B9DC),
                    fontFamily: "Poppins",
                    fontSize: 15),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                        hintText: "Subject",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
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
                        controller: prblmcntrl,
                        onChanged: (value) {
                          if (value.characters.length <= 10) {
                            setState(() {
                              nmchar = value.characters.length;
                              isenable = true;
                            });
                          } else {
                            isenable = false;
                          }
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Explain your problem...",
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
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: Text(
                      "$nmchar/400",
                      style: TextStyle(color: Color(0xFF90E0EF)),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                        hintText: "Urgency",
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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                        hintText: "Upload Media",
                        hintStyle: const TextStyle(
                            fontFamily: "Poppinsregular",
                            color: Color(0xFF90E0EF)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
