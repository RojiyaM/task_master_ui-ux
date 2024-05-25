import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/detail/widgets/register_button.dart';
import 'package:run/screens/home/home.dart';
import 'package:run/screens/registration/signup.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

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
                height: 350,
                width: 450,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/task.png'),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )),
              ),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )),
              ),
              const SizedBox(
                height: 70,
              ),
              MyRegisterButton(
                  label: "Log In",
                  color: Colors.black,
                  onTap: () async {
                    await Get.to(() => HomeMainPage());
                  }),
              Container(
                height: 55,
                width: 300,
                child: const Center(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                height: 55,
                width: 300,
                child: const Center(
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Still without account?  ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.grey),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(

                            ///done login page
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: kRedDark),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
