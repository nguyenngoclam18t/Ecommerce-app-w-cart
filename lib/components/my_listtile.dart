import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  String text;
  IconData icon;
  void Function()? onTap;
  MyListtile(
      {super.key, required this.text, required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        title: Text(text),
        onTap: onTap,
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
