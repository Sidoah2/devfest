import 'package:flutter/material.dart';

class BotommNaave extends StatelessWidget {
  final icon;
  final void Function()? ontap;
  BotommNaave(this.ontap, this.icon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ontap, child: icon);
  }
}
