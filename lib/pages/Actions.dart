import 'package:devfest/pages/GetHelp.dart';
import 'package:devfest/pages/GiveHelp.dart';
import 'package:flutter/material.dart';

class ActionsP extends StatelessWidget {
  const ActionsP({super.key});

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
            "Help",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF00B9DC), fontSize: 30),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GiveHelp(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF00B9DC)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("images/path998 1.png"),
                              ))),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Give help",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GetHelp(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF00B9DC)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            "Get help",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("images/path998 2.png"),
                              ))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
