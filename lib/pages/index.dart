import 'package:devfest/Providers/ButtomBarIndex.dart';
import 'package:devfest/SousPages/ButtomBar.dart';
import 'package:devfest/pages/Actions.dart';
import 'package:devfest/pages/Don.dart';
import 'package:devfest/pages/Home.dart';
import 'package:devfest/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Index extends StatelessWidget {
  List Pages = [
    Home(),
    ActionsP(),
    Don(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Consumer<ButtomBarIndex>(
        builder: (context, buttombarindex, child) {
          return Scaffold(
            bottomNavigationBar: ButtomIcons(),
            body: Pages[buttombarindex.pagecurrent],
          );
        },
      )),
    );
  }
}
