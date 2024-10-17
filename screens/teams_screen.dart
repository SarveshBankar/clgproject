import 'package:flutter/material.dart';
import 'package:t20wc/widgets/background_image.dart';
import 'package:t20wc/widgets/custom_appbar.dart';
import 'package:t20wc/widgets/team_widget.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
          titleText: 'Teams',
        ),
        body: BackgroundWidget(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TeamWidget(
                  flag: 'assets/flags/India.jpeg', countryName: 'India', captainName: 'Rohit Sharma',  captainImage: 'assets/captains/rohitjpeg.jpeg',
                ),
                TeamWidget(
                  flag: 'assets/flags/pak.jpeg', countryName: 'Pakistan', captainName: 'Babar Azam',captainImage: 'assets/captains/babar.jpeg',
                ),
                TeamWidget(
                  flag: 'assets/flags/Nz.jpeg', countryName: 'New Zealand', captainName: 'Kane Williamson',captainImage: 'assets/captains/kane .jpeg',
                ),
                TeamWidget(
                  flag: 'assets/flags/Aus.jpeg', countryName: 'Australia', captainName: 'Pat Cummins',captainImage: 'assets/captains/pat cummins.jpeg',
                ),
                TeamWidget(
                  flag: 'assets/flags/Eng.jpeg', countryName: 'England', captainName: 'Jos Buttler',captainImage: 'assets/captains/buttler.jpeg',
                ),TeamWidget(
                  flag: 'assets/flags/Ban.jpeg', countryName: 'Bangladesh', captainName: 'Shakib Al Hassan',captainImage: 'assets/captains/shakib.jpeg',
                ),
              ],
            )));
  }
}

