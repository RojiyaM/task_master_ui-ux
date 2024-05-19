//import 'dart:js';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:run/constants/colors.dart';
import 'package:run/controllers/task_controller.dart';
import 'package:run/models/add_task.dart';
import 'package:run/models/task.dart';
import 'package:run/screens/detail/add_taskbar.dart';
import 'package:run/screens/detail/widgets/button.dart';
import 'package:run/screens/detail/widgets/date_picker.dart';
import 'package:run/screens/detail/widgets/task_tile.dart';

class DetailPage extends StatefulWidget {
  final Task task;

  DetailPage(this.task);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DateTime _selectedDate = DateTime.now();
  final _taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        // backgroundColor: Colors.white,
        //body: Container(
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        //child: SingleChildScrollView(

        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _addTaskBar(),
              _addDateBar(),
              SizedBox(
                height: 10,
              ),
              _showTasks(),
            ],
          ),
        )
        //),
        //),
        );
  }

  _showTasks() {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
            itemCount: _taskController.taskList.length,
            itemBuilder: (_, index) {
              print(_taskController.taskList.length);
              return AnimationConfiguration.staggeredList(
                  position: index,
                  child: SlideAnimation(
                      child: FadeInAnimation(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showBottomSheet(
                                context, _taskController.taskList[index]);
                          },
                          child: TaskTile(_taskController.taskList[index]),
                        )
                      ],
                    ),
                  )));
              //
            });
      }),
    );
  }

  _showBottomSheet(BuildContext context, AddTask task) {
    Get.bottomSheet(Container(
      padding: EdgeInsets.only(top: 4),
      height: task.isCompleted == 1
          ? MediaQuery.of(context).size.height * 0.24
          : MediaQuery.of(context).size.height * 0.32,
      color: Colors.white,
      width: 500,
      child: Column(
        children: [
          Container(
            height: 6,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[600]),
          ),
          Spacer(),
          task.isCompleted == 1
              ? Container()
              : _bottomSheetButton(
                  label: "Task Completed",
                  onTap: () {
                    _taskController.markTaskCompleted(task.id!);
                    Get.back();
                  },
                  clr: kBlueDark,
                  context: context),
          _bottomSheetButton(
              label: "Edit Task",
              onTap: () {
                Get.back();
              },
              clr: kYellowDark,
              context: context),
          _bottomSheetButton(
              label: "Delete Task",
              onTap: () {
                _taskController.delete(task);

                Get.back();
              },
              clr: kRedDark,
              isClose: false,
              context: context),
          SizedBox(
            height: 10,
          ),
          _bottomSheetButton(
              label: "Close",
              onTap: () {
                Get.back();
              },
              clr: kRedDark,
              isClose: true,
              context: context),
        ],
      ),
    ));
  }

  _bottomSheetButton(
      {required String label,
      required Function()? onTap,
      required Color clr,
      bool isClose = false,
      required BuildContext context}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        height: 46,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: isClose == true ? Colors.grey[300]! : clr),
            borderRadius: BorderRadius.circular(20),
            color: isClose == true ? Colors.transparent : clr),
        child: Center(
            child: Text(
          label,
          style:
              isClose ? titleStyle : titleStyle.copyWith(color: Colors.white),
        )),
      ),
    );
  }

  TextStyle get titleStyle {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }

  _addDateBar() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 60,
        initialSelectedDate: DateTime.now(),
        selectionColor: kRedDark,
        selectedTextColor: Colors.white,
        dateTextStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
        onDateChange: (date) {
          _selectedDate = date;
        },
      ),
    );
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
              Text("Today",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          // MyButton(
          //     label: "+ Add Task", onTap: () => Get.to(const AddTaskPage()))

          MyButton(
              label: "+ Add Task",
              onTap: () async {
                await Get.to(() => AddTaskPage());
                _taskController.getTasks();
              }),
        ],
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return AppBar(
      //expandedHeight: 90,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: SizedBox(
              //height: 200,
              )),
      backgroundColor: kRedLight,
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          iconSize: 20),
      actions: [
        Icon(
          Icons.notification_add_rounded,
          size: 40,
          color: Colors.black,
        ),
        Icon(
          Icons.more_vert,
          size: 40,
          color: Colors.black,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
          title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My ${widget.task.title} tasks',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          // SizedBox(height: 5),
          // Text(
          //   'You have ${widget.task.left} tasks for today!',
          //   style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          // )
        ],
      )),
    );
  }
}
