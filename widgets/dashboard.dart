import 'dart:core';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;
  const DashBoard(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 10),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )),
    );
  }
}
