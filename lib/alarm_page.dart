import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'data.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Alarm",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),
          ),
          Expanded(
            child: ListView(
              children: alarms.map<Widget>((alarm) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: alarm.gradientColors,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                            color: alarm.gradientColors.last.withOpacity(0.4),
                            blurRadius: 8,
                            spreadRadius: 3,
                            offset: Offset(4, 4))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.label,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Office',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Switch(
                            onChanged: (bool value) {},
                            value: true,
                            activeColor: Colors.white,
                          )
                        ],
                      ),
                      Text(
                        'Mont-Friday',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '07:00 AM',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).followedBy([
                DottedBorder(
                  strokeWidth: 1,
                  color: Colors.white,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(30),
                  dashPattern: [5, 4],
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            'Add Alarm',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]).toList(),
            ),
          )
        ],
      ),
    );
  }
}
