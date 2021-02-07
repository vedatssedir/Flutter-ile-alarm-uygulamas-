import 'package:flutter/cupertino.dart';

class AlarmInfo {
  DateTime alarmDatetime;
  String desctription;
  bool isActive;
  List<Color> gradientColors;

  AlarmInfo(this.alarmDatetime, {this.desctription, this.gradientColors});
}
