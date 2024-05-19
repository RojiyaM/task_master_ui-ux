import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker1 extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(DateFormat.yMMMMd().format(DateTime.now())),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
