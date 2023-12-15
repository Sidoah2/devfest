import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WriteHelp extends StatefulWidget {
  @override
  State<WriteHelp> createState() => _WriteHelpState();
}

class _WriteHelpState extends State<WriteHelp> {
  var solutioncntrl = TextEditingController();
  File file_img = File("");
  int numchar = 0;

  @override
  Widget build(BuildContext context) {
    print("aa " + file_img.path);
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
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
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: solutioncntrl,
                            onChanged: (value) {
                              setState(() {
                                numchar = value.characters.length;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: "How can you help?",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 8),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("$numchar/400")),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  await show_image_piker();
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF00B9DC),
                              blurRadius: 1,
                              spreadRadius: 0.6)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          file_img.path == ""
                              ? Text("Upload Media")
                              : Text("File Uploaded"),
                          file_img.path == ""
                              ? Image.asset("images/path5539 1.png")
                              : Image.asset("images/g5964 1.png")
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF00B9DC)),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.065,
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  show_image_piker() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    // doc ra7 tefte7 galery  w yreje3 l pohoto li khtarouha f myfile ...fiha path data type......ect
    // bach njibou l path
    setState(() {
      file_img = File(myfile!.path);
    });
    // upload image and data in server apres in database
  }
}
