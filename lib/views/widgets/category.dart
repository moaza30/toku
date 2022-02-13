import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? title;
  Function()? onTap;
  Category({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffEEEEEF),
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.only(top: 20, left: 15, right: 15),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.40,
        child: Text(
          title!,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
