import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/match.dart';

class DataApi{

  static Future<List<Match>> getAllMatches(BuildContext context)async{

    var matches = <Match>[];

    var assetsBundle = DefaultAssetBundle.of(context);
    var data = await assetsBundle.loadString('assets/data/Games.json');
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData['schedule'];

    for (var jsonMatch in jsonSchedule){
      Match match = Match.fromJSON(jsonMatch);
      matches.add(match);
    }

    return matches;
  }
}
