import 'package:clockapp/alarm_page.dart';
import 'package:clockapp/clock_page.dart';
import 'package:clockapp/data.dart';
import 'package:clockapp/enums.dart';
import 'package:clockapp/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems
                .map((currentMenuInfo) => buildMenuButton(currentMenuInfo))
                .toList(),
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Consumer<MenuInfo>(
              builder: (BuildContext context, MenuInfo value, Widget child) {
                if (value.menuType == MenuType.clock) {
                  return ClockPage();
                } else if (value.menuType == MenuType.alarm) {
                  return AlarmPage();
                } else {
                  return Container(
                    child: RichText(
                      text: TextSpan(style: TextStyle(fontSize: 20), children: [
                        TextSpan(text: 'Upcoming Tutorial\n'),
                        TextSpan(
                          text: value.title,
                          style: TextStyle(fontSize: 48),
                        ),
                      ]),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
        builder: (BuildContext context, MenuInfo value, Widget child) {
      return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32))),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        color: currentMenuInfo.menuType == value.menuType
            ? Colors.black45
            : Colors.transparent,
        onPressed: () {
          var menuInfo = Provider.of<MenuInfo>(context, listen: false);
          menuInfo.updateMenu(currentMenuInfo);
        },
        child: Column(
          children: [
            Text(
              currentMenuInfo.title ?? '',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      );
    });
  }
}
