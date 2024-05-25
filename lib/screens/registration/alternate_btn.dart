import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/detail/add_taskbar.dart';

class MyAlternateButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const MyAlternateButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: kRedDark),
        ),
      ),
    );
  }
}
