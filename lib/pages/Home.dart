import 'package:devfest/Data/strings.dart';
import 'package:devfest/SousPages/Post.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("images/path1810 1.png")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                    " ${Strings.HomeDAta[0].useNameSol} a mentionne votre nom dans '${Strings.HomeDAta[0].titel}'",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: Color(0xFF00B9DC),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Image.asset("images/path1810 1.png"),
                          Positioned(
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFF00B9DC),
                              radius: 7,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
                shape: ContinuousRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(70))),
                toolbarHeight: 70,
                backgroundColor: Colors.white,
                title: Text(
                  "Home",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xFF00B9DC),
                      fontSize: 30),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: Strings.HomeDAta.length,
                    itemBuilder: (context, index) {
                      return PostCard(Strings.HomeDAta[index]);
                    },
                  ),
                ),
              ))),
    );
  }

  Future Opendialog(context) => showDialog(
        context: context,
        builder: (context) {
          return Text("data");
        },
      );
}
