// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  var num1 = TextEditingController(text: "");
  var num2 = TextEditingController();
  var num3 = TextEditingController();
  var num4 = TextEditingController();
  OtpPage(this.num1, this.num2, this.num3, this.num4);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return OtpDesign(widget.num1, widget.num2, widget.num3, widget.num4);
  }
}

class OtpDesign extends StatefulWidget {
  var num1 = TextEditingController(text: "");
  var num2 = TextEditingController();
  var num3 = TextEditingController();
  var num4 = TextEditingController();
  OtpDesign(this.num1, this.num2, this.num3, this.num4);
  @override
  State<OtpDesign> createState() => _OtpDesignState();
}

class _OtpDesignState extends State<OtpDesign> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 68,
            width: 54,
            child: TextField(
              controller: widget.num1,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            height: 68,
            width: 54,
            child: TextField(
              controller: widget.num2,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            height: 68,
            width: 54,
            child: TextField(
              controller: widget.num3,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            height: 68,
            width: 54,
            child: TextField(
              controller: widget.num4,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
