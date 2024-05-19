import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Stack(
        children: [
          // Positioned(
          //   right: 5.4,
          //   top: 588.8,
          //   child: Transform(
          //     transform: Matrix4.identity()..rotationZ(-0.1353501468),
          //     child: SizedBox(
          //       width: 141,
          //       height: 64,
          //       child: SvgPicture.network(
          //         'assets/vectors/ellipse_21_x2.svg',
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.fromLTRB(6.4, 26.2, 33.6, 56.1),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: SizedBox(
                          width: 390,
                          height: 394,
                          child: SvgPicture.network(
                            'assets/container_x2.svg',
                          ),
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
                                  fontSize: 50,
                                  height: 1.3,
                                  letterSpacing: 1,
                                ),
                              ),
                              TextSpan(
                                text: ' your task and ideas quickly',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 50,
                                  height: 1.5,
                                  letterSpacing: 1,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(8.2, 0, 8.2, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32.7),
                          child: SizedBox(
                            width: 328.3,
                            height: 76,
                            // child: SvgPicture.network(
                            //   'assets/group_1191_x2.svg',
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   right: 77.4,
                //   bottom: 104.3,
                //   child: Transform(
                //     transform: Matrix4.identity()..rotationZ(3.0257104357),
                //     child: SizedBox(
                //       width: 83.4,
                //       height: 89.4,
                //       child: SvgPicture.network(
                //         'assets/group_120_x2.svg',
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
