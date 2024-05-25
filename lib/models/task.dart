import 'package:flutter/material.dart';
import 'package:run/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;

  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.work,
          title: 'Work',
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          btnColor: kBlue,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.health_and_safety,
          title: 'Health',
          bgColor: kRedLight,
          iconColor: kRedDark,
          btnColor: kRed,
          left: 3,
          done: 1),
      Task(isLast: true)
    ];
  }
}
