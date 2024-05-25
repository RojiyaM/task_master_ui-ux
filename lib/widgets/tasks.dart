import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:run/constants/colors.dart';
import 'package:run/controllers/home_controller.dart';
import 'package:run/models/task.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:run/screens/detail/detail.dart';
import 'package:run/screens/detail/widgets/button.dart';
import 'package:run/screens/detail/widgets/register_button.dart';
import 'package:run/screens/home/home.dart';
import 'package:run/screens/registration/signup.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();
  //final formKey = GlobalKey<FormState>();
  //final homeCtrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return GestureDetector(
      onTap: () async {
        await Get.defaultDialog(
          titlePadding: EdgeInsets.symmetric(vertical: 10.0),
          radius: 5,
          title: 'Task Type',
          titleStyle: TextStyle(fontWeight: FontWeight.bold),
          content: Form(
              //key: homeCtrl.,
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Category Name',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your task title';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: kYellowDark,
                    size: 35,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.trolley,
                    color: Colors.purple,
                    size: 35,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.flight_sharp,
                    color: Colors.orange,
                    size: 35,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.work,
                    color: kBlueDark,
                    size: 35,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.health_and_safety,
                    color: kRedDark,
                    size: 35,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )),
          actions: [
            GestureDetector(
              onTap: () async {
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 37),
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kBlueDark),
                // child: const Center(
                child: Text(
                  "Add+",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
                //),
              ),
            )
          ],
        );
      },
      child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(20),
          dashPattern: [10, 10],
          color: Colors.grey,
          strokeWidth: 2,
          child: Center(
            child: Text(
              "+ Add",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

  Widget buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(task)));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: task.bgColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              task.iconData,
              color: task.iconColor,
              size: 35,
            ),
            SizedBox(height: 30),
            Text(
              task.title!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                _buildTaskStatus(
                    task.btnColor!, task.iconColor!, '${task.left} left'),
                SizedBox(width: 5),
                _buildTaskStatus(
                    Colors.white, task.iconColor!, '${task.left} done')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: txColor),
      ),
    );
  }
}
