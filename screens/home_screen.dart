import 'package:flutter/material.dart';
import 'package:t20wc/screens/Schedule_screen.dart';
import 'package:t20wc/screens/teams_screen.dart';
import 'package:t20wc/widgets/background_image.dart';
import 'package:t20wc/widgets/custom_appbar.dart';
import 'package:t20wc/widgets/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'T20 World Cup 2024',
      ),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          children: [
            DashBoard(
                title: 'Schedule',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return const ScheduleScreen();
                  }));
                },
                imagePath: 'assets/icons/schedule.png'),
            DashBoard(
                title: 'Teams',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return const TeamsScreen();
                  }));
                },
                imagePath: 'assets/icons/Team.png'),
            DashBoard(
                title: 'Live',
                onTap: () async{
                  const url1 = 'https://www.google.com/search?q=t20+world+cup+2024+schedule&sca_esv=be81b04602fdf0ed&rlz=1C5CHFA_enIN1033IN1033&ei=c_AgZqi2BsCYvr0P8LaikA0&oq=official+site+of+t20wc+2024&gs_lp=Egxnd3Mtd2l6LXNlcnAiG29mZmljaWFsIHNpdGUgb2YgdDIwd2MgMjAyNCoCCAAyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEcyChAAGLADGNYEGEdI6QtQAFgAcAF4AJABAJgBaaABaaoBAzAuMbgBAcgBAJgCAaACBZgDAIgGAZAGCJIHATGgB-oG&sclient=gws-wiz-serp';
                  await canLaunchUrl(Uri.parse(url1))
                  ? await launchUrl(Uri.parse(url1))
                      : throw 'Could not launch $url1';
                },
                imagePath: 'assets/icons/live.png'),
            DashBoard(
                title: "Highlights",
                onTap: () async {
                  const url = 'https://www.youtube.com/results?search_query=icc';
                  await canLaunchUrl(Uri.parse(url))
                      ? await launchUrl(Uri.parse(url))
                      : throw 'Could not launch $url';

                },
                imagePath: 'assets/icons/highlights.png'),

            const Text("By Sarvesh",style: TextStyle(color: Colors.white,fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
