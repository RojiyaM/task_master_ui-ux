import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:run/constants/colors.dart';
import 'package:run/screens/home/home_in.dart';
import 'package:run/screens/home/notification.dart';
import 'package:run/screens/home/report.dart';
import 'package:run/widgets/go_premium.dart';
import 'package:run/widgets/tasks.dart';

class HomeMainPage extends StatefulWidget {
  @override
  State<HomeMainPage> createState() => _HomePageState();
}

class _HomePageState extends State<HomeMainPage> {
  PageController pageController = PageController();
  List<Widget> pages = [HomePage(), ReportPage()];
  int selectIndex = 0;
  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: _buildAppBar(),
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          onTap: onItemTap,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                  color: selectIndex == 0 ? kBlueDark : Colors.grey,
                )),
            BottomNavigationBarItem(
              label: 'Report',
              icon: Icon(
                Icons.bar_chart,
                size: 30,
                color: selectIndex == 1 ? kBlueDark : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  void onItemTap(int selectedItem) {
    pageController.jumpToPage(selectedItem);
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/photo_by_philip_martin.png'),
            ),
          ),
          SizedBox(width: 10),
          Text('Hi, Keshav!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () async {
            await Get.to(() => NotificationPage());
          },
          child: Icon(Icons.notification_add, color: Colors.black, size: 40),
        ),
        Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 40,
        )
      ],
    );
  }
}
