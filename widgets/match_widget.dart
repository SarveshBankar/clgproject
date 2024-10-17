import 'package:flutter/material.dart';
import 'package:t20wc/utilities/colors.dart';
import '../models/match.dart';

class MatchWidget extends StatelessWidget {
  final String imageOne;
  final String time;
  final String venue;
  final String date;
  final String imageTwo;
  final String nameOne;
  final String nameTwo;
  const MatchWidget(
      {Key? key,
      required this.imageOne,
        required this.imageTwo,
        required this.nameOne,
        required this.date,
        required this.time,
        required this.venue,
      required this.nameTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 120,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 120,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.lightPurpleColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: ClipOval(
                                    child: Image.asset(
                                      imageOne,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  nameOne,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                                width: 35,
                                height: 20,
                                child: Text(
                                  "VS",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: ClipOval(
                                    child: Image.asset(
                                      imageTwo,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                 Text(
                                  nameTwo,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.pinkColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10))),
                        child:Column(
                          children: [
                            const Text("Date",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),),
                            Text(date,style: const TextStyle(fontSize: 20),),
                            Text(time,style: const TextStyle(fontSize: 12),),
                            Text(venue,style: const TextStyle(fontSize: 20),),
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
