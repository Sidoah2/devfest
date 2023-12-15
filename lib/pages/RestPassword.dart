import 'package:flutter/material.dart';

class restPassword extends StatelessWidget {
  var confirmpasswordcntrl = TextEditingController();
  var passwordcntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.white,
                  Color(0xFFD7F2ED),
                  Color(0xFF9DDFD3),
                  Color(0xFF53C6B2)
                ])),
            child: Center(
              child: Container(
                height: 600,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/path4941 1.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Reset password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF00B9DC),
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Color(0xFF00B9DC),
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.normal),
                          controller: passwordcntrl,
                          decoration: InputDecoration(
                              hintText: "New password",
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
                    SizedBox(
                      height: 2,
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
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Color(0xFF00B9DC),
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.normal),
                          controller: confirmpasswordcntrl,
                          decoration: InputDecoration(
                              hintText: "Confirm password",
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
                        "Done",
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
      )),
    );
  }
}
