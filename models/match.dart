import 'package:flutter/material.dart';


class Match {
  late String date ;
  late String teamOne ;
  late String teamTwo ;
  late String flagOne ;
  late String flagTwo ;
  late String time ;

  Match({
    required this.date,
    required this.flagOne,
    required this.flagTwo,
    required this.teamOne,
    required this.teamTwo,
    required this.time,
});

  factory Match.fromJSON(Map<String,dynamic>map){
    return Match(
      date: map['data'],
      teamOne: map['teamOne'],
      teamTwo: map['teamTwo'],
      flagOne: map['flagOne'],
      flagTwo: map['flagTwo'],
      time: map['time'],

    );
  }
}