// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SocieteCard extends StatelessWidget {
  const SocieteCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                  blurRadius: 0.9, offset: Offset(0, 0.7), spreadRadius: 0)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("Name societe"),
                  Text("desc societe"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
