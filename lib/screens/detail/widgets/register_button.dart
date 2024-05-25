import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/detail/add_taskbar.dart';

class MyRegisterButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color color;
  const MyRegisterButton(
      {super.key,
      required this.label,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 110),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        // child: const Center(
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        //),
      ),
    );
  }
}
