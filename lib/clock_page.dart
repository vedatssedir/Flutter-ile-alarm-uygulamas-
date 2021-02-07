import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'clock_view.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('dd.MM.yyyy').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    print(timezoneString);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            formattedTime,
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            formattedDate,
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          ClockView(
            size: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
