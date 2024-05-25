import 'package:flutter/material.dart';
import 'package:run/constants/colors.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'May 25, 2024',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      SizedBox(width: 15),
                      Container(
                        child: Icon(
                          Icons.circle_outlined,
                          size: 10,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Live',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey[600]),
                    ),
                  ),
                ]),
                SizedBox(width: 90),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.circle_outlined,
                          size: 10,
                          color: kBlueDark,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Completed',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey[600]),
                    ),
                  ),
                ]),
                SizedBox(width: 70),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.circle_outlined,
                          size: 10,
                          color: kRedDark,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Created',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey[600]),
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              height: 350,
              width: 370,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/report.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return AppBar(
      bottom:
          PreferredSize(preferredSize: Size.fromHeight(5), child: SizedBox()),
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          iconSize: 20),
      flexibleSpace: FlexibleSpaceBar(
          title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Report',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      )),
    );
  }
}
