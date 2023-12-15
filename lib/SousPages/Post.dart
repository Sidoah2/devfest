// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devfest/Objects/HomeObjet.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
// import 'package:readmore/readmore.dart';

class PostCard extends StatefulWidget {
  HomeObjet homeObjet;
  PostCard(this.homeObjet);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xFF00B9DC),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "${widget.homeObjet.titel}",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.white),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ReadMoreText(
                      "${widget.homeObjet.solution}",
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: '\nRead less',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBCBCBC)),
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBCBCBC)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            trailing: InkWell(
              onTap: () {
                setState(() {
                  widget.homeObjet.fav = !widget.homeObjet.fav;
                });
              },
              child: widget.homeObjet.fav
                  ? Image.asset(
                      "images/image 5.png",
                    )
                  : Image.asset(
                      "images/Group (1).png",
                    ),
            ),
            leading: CircleAvatar(
              backgroundColor: Color(0xFF00B9DC),
              radius: 30,
              child: Image.asset("images/path1002 2.png"),
            ),
            title: Text("${widget.homeObjet.useNameSol}"),
            subtitle: Text("${widget.homeObjet.useCountrySol}"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Divider(
              thickness: 1,
              color: Color(0xFF00B9DC),
            ),
          )
        ],
      ),
    );
  }
}
