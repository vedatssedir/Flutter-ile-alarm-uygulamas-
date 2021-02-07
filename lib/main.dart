import 'package:clockapp/enums.dart';
import 'package:clockapp/homepage.dart';
import 'package:clockapp/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClockApp(),
    ));

class ClockApp extends StatefulWidget {
  @override
  _ClockAppState createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF2D2F41),
        child: ChangeNotifierProvider<MenuInfo>(
            create: (context) => MenuInfo(MenuType.clock), child: HomePage()),
      ),
    );
  }
}
