import 'package:devfest/Providers/ButtomBarIndex.dart';
import 'package:devfest/SousPages/ButtomNave.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtomIcons extends StatefulWidget {
  const ButtomIcons({super.key});

  @override
  State<ButtomIcons> createState() => _ButtomIconsState();
}

class _ButtomIconsState extends State<ButtomIcons> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ButtomBarIndex>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF00B9DCF),
                // gradient: LinearGradient(colors: [
                //   Color.fromARGB(255, 193, 245, 255),
                //   Color(0xFF00B9DC),
                // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotommNaave(() {
                  value.pagecurrent = 0;
                },
                    value.pagecurrent != 0
                        ? Image.asset(
                            "images/path996 1.png",
                            height: 30,
                          )
                        : Image.asset("images/path996 1.png", height: 40)),
                BotommNaave(() {
                  value.pagecurrent = 1;
                },
                    value.pagecurrent != 1
                        ? Image.asset("images/Group 63.png", height: 30)
                        : Image.asset("images/Group 63.png", height: 40)),
                BotommNaave(() {
                  value.pagecurrent = 2;
                },
                    value.pagecurrent != 2
                        ? Image.asset("images/g1014 1.png", height: 30)
                        : Image.asset("images/g1014 1.png")),
                BotommNaave(() {
                  value.pagecurrent = 3;
                },
                    value.pagecurrent != 3
                        ? Image.asset("images/path1002 1.png", height: 25)
                        : Image.asset("images/path1002 1.png", height: 40)),
              ],
            ),
          ),
        );
      },
    );
  }
}
