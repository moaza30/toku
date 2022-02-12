import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? title;
  Color? color;
  Function()? onTap;
  Category({this.title, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        color: color!,
        child: Text(
          title!,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
