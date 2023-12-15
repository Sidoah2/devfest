import 'dart:convert' as convert;

import 'package:devfest/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth {
  static Future<void> ALogIn(context, email, password) async {
    print("zzzzzzzz");
    var uri = "http://192.168.114.34:3030/Api/v1/Auth/LogIn";
    final headerall = {'Content-Type': 'application/json'};
    final bodyall = convert.jsonEncode({
      "email": email,
      "password": password,
    });

    print("mmmmmmmmmmmmmm");
    var res =
        await http.post(Uri.parse(uri), headers: headerall, body: bodyall);
    print("aaaaaaaa");
    if (res.statusCode == 200) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Index(),
          ),
          (route) => false);
    }
  }

  static Future<void> AddUser(
      context, name, email, country, password, contrabution) async {
    print("zzzzzzzz");
    var uri = "http://192.168.114.34:3030/Api/v1/Auth/";
    final headerall = {'Content-Type': 'application/json'};
    final bodyall = convert.jsonEncode({
      "name": name,
      "email": email,
      "password": password,
      "country": country,
      "contrabution": country,
    });

    print("mmmmmmmmmmmmmm");
    var res =
        await http.post(Uri.parse(uri), headers: headerall, body: bodyall);
    print("aaaaaaaa");
    if (res.statusCode == 201) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Index(),
          ),
          (route) => false);
    }
  }
}
