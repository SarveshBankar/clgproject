import 'package:flutter/material.dart';
import 'package:t20wc/utilities/data_api.dart';
import 'package:t20wc/widgets/background_image.dart';
import 'package:t20wc/widgets/custom_appbar.dart';
import 'package:t20wc/widgets/match_widget.dart';
import '../models/match.dart';
import '../utilities/colors.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        titleText: 'Schedule ',
      ),
      body: BackgroundWidget(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            MatchWidget(
              imageOne: 'assets/flags/India.jpeg',
              imageTwo: 'assets/flags/Aus.jpeg',
              nameOne: 'India',
              nameTwo: 'Australia',
              date: '1 june',
              time: "7:00 pm",
              venue: 'USA',
            ),
            MatchWidget(
              imageOne: 'assets/flags/Ban.jpeg',
              imageTwo: 'assets/flags/Eng.jpeg',
              nameOne: 'Bangladesh',
              nameTwo: 'England',
              date: '2 june',
              time: '7:00 pm',
              venue: 'WI',
            ),
            MatchWidget(
              imageOne: 'assets/flags/India.jpeg',
              imageTwo: 'assets/flags/Eng.jpeg',
              nameOne: 'India',
              nameTwo: 'England',
              date: '3 june',
              time: '7:00 pm',
              venue: 'USA',
            ),
            MatchWidget(
              imageOne: 'assets/flags/Aus.jpeg',
              imageTwo: 'assets/flags/Nz.jpeg',
              nameOne: 'Australia ',
              nameTwo: 'New Zeland',
              date: '4 june',
              time: '7:00 pm',
              venue: 'WI',
            ),
            MatchWidget(
              imageOne: 'assets/flags/India.jpeg',
              imageTwo: 'assets/flags/pak.jpeg',
              nameOne: 'India',
              nameTwo: 'Pakistan',
              date: '9 june',
              time: '7:00 pm',
              venue: 'WI',
            ),
          ],
        ),
      ),
    );
  }
}
