import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t20wc/utilities/colors.dart';

import 'background_image.dart';
import 'match_widget.dart';

class TeamWidget extends StatelessWidget {
  final String flag;
  final String countryName;
  final String captainName;
  final String captainImage;

  const TeamWidget({
    Key? key,
    required this.flag,
    required this.countryName,
    required this.captainName,
    required this.captainImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            AppColors.pinkColor,
            AppColors.lightPurpleColor,
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    flag,
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    countryName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    captainName,
                    style: const TextStyle(
                        color: Colors.white, fontStyle: FontStyle.normal,fontSize: 15),
                  )
                ],
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(captainImage),
            radius: 40,
          ),
        ],
      ),
    );
  }
}
