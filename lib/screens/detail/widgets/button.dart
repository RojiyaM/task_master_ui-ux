import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/detail/add_taskbar.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const MyButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kRedDark),
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
