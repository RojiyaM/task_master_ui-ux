import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:run/screens/detail/widgets/register_button.dart';
import 'package:run/screens/home/home.dart';
import 'package:run/screens/registration/signup.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                height: 400,
                width: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/task.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(37.6, 0, 34.4, 41.9),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      height: 1.5,
                      letterSpacing: 1,
                      color: Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Manage',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          height: 1.3,
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: ' your task and ideas quickly',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1.5,
                          letterSpacing: 1,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MyRegisterButton(
                  label: "Start",
                  color: Colors.black,
                  onTap: () async {
                    await Get.to(() => SignUPPage());
                  }),
            ],
          ))),
    );
  }
}
