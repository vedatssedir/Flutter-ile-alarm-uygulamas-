import 'package:clockapp/enums.dart';
import 'package:clockapp/theme_data.dart';

import 'alarm_info.dart';
import 'menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Saat'),
  MenuInfo(MenuType.alarm, title: 'Alarm'),
  MenuInfo(MenuType.timer, title: 'Timer'),
  MenuInfo(MenuType.stopwatch, title: 'Stop')
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      desctription: 'Sabah alarmı', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      desctription: 'Spor alarmı', gradientColors: GradientColors.sunset),
];
