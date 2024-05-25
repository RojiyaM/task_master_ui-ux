import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/detail/widgets/register_button.dart';
import 'package:run/screens/home/home.dart';
import 'package:run/screens/registration/alternate_btn.dart';
import 'package:run/screens/registration/login.dart';

class SignUPPage extends StatelessWidget {
  const SignUPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                height: 250,
                width: 450,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/task.png'),
                ),
              ),
              Text(
                "Create Your Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 30,
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
                      Icons.person,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Email',
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
                  label: "Sign Up",
                  color: Colors.black,
                  onTap: () async {
                    await Get.to(() => LogInPage());
                  }),
              Container(
                margin: EdgeInsets.only(left: 50),
                height: 55,
                width: 300,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                    MyAlternateButton(
                        label: "Log in",
                        onTap: () async {
                          await Get.to(() => LogInPage());
                        })
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
