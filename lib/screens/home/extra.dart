import 'package:flutter/material.dart';
import 'package:flutter/src/services/asset_manifest.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Master',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 26.2, 0, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: 482,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 2.2, 31.3),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 326.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                                  width: 28.4,
                                  height: 11.1,
                                  child: SizedBox(
                                    width: 28.4,
                                    height: 11.1,
                                    child: SvgPicture.network(
                                      'assets/vectors/Unknown',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.2, 0, 0),
                                  child: SizedBox(
                                    width: 66.7,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0.3, 5, 0.3),
                                          child: SizedBox(
                                            width: 17,
                                            height: 10.7,
                                            child: SvgPicture.network(
                                              'assets/vectors/Unknown',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                          child: SizedBox(
                                            width: 15.3,
                                            height: 11,
                                            child: SvgPicture.network(
                                              'assets/vectors/Unknown',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: SizedBox(
                                            width: 24.3,
                                            height: 11.3,
                                            child: SvgPicture.network(
                                              'assets/vectors/Unknown',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(45, 0, 45, 124),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 372.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              'assets/images/photo_by_philip_martin.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 62,
                                          height: 47,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 4, 0, 3),
                                      child: Text(
                                        'Hi, Keshav!',
                                        // style: GoogleFonts.getFont(
                                        //   'Mulish',
                                        //   fontWeight: FontWeight.w800,
                                        //   fontSize: 32,
                                        //   color: Color(0xFF000000),
                                        // ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5.8, 0, 7.8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 25.4, 0),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: -12.6,
                                              top: -0.2,
                                              child: SizedBox(
                                                width: 30.6,
                                                height: 30,
                                                child: SvgPicture.network(
                                                  'assets/vectors/Unknown',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  12.6, 0.2, 0, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 30.9, 0, 0),
                                                    child: SizedBox(
                                                      width: 5.4,
                                                      height: 2.3,
                                                      child: SvgPicture.network(
                                                        'assets/vectors/Unknown',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 18.2),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              3, 0, 2.8, 0),
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Positioned(
                                                            bottom: 0,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.5),
                                                              ),
                                                              child: Container(
                                                                width: 13,
                                                                height: 13,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '1',
                                                            // style: GoogleFonts
                                                            //     .getFont(
                                                            //   'Mulish',
                                                            //   fontWeight:
                                                            //       FontWeight
                                                            //           .w700,
                                                            //   fontSize: 12,
                                                            //   color: Color(
                                                            //       0xFFFFFFFF),
                                                            // ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 3.1, 0, 4.1),
                                        width: 6.1,
                                        height: 26.3,
                                        child: SizedBox(
                                          width: 6.1,
                                          height: 26.3,
                                          child: SvgPicture.network(
                                            'assets/vectors/Unknown',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 82.2, 35),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'My Tasks Category',
                            // style: GoogleFonts.getFont(
                            //   'Mulish',
                            //   fontWeight: FontWeight.w700,
                            //   fontSize: 32,
                            //   color: Color(0xFF000000),
                            // ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(44, 0, 44, 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 383,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFF1DC),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF1DC),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Container(
                                              width: 186,
                                              height: 157,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 186,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 28, 0, 18),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 111, 19),
                                                  width: 16,
                                                  height: 20,
                                                  child: SizedBox(
                                                    width: 16,
                                                    height: 20,
                                                    child: SvgPicture.network(
                                                      'assets/vectors/Unknown',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 44.4, 18),
                                                  child: Text(
                                                    'Personal',
                                                    // style: GoogleFonts.getFont(
                                                    //   'Mulish',
                                                    //   fontWeight:
                                                    //       FontWeight.w800,
                                                    //   fontSize: 20,
                                                    //   color: Color(0xFF000000),
                                                    // ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      13, 0, 0, 0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 7, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFE7C2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        43),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(12, 7,
                                                                    13.2, 7),
                                                            child: Text(
                                                              '4 left',
                                                              // style: GoogleFonts
                                                              //     .getFont(
                                                              //   'Mulish',
                                                              //   fontWeight:
                                                              //       FontWeight
                                                              //           .w700,
                                                              //   fontSize: 12,
                                                              //   color: Color(
                                                              //       0xFFFFB563),
                                                              // ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(43),
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(13, 7,
                                                                  3.2, 7),
                                                          child: Text(
                                                            '4 done',
                                                            // style: GoogleFonts
                                                            //     .getFont(
                                                            //   'Mulish',
                                                            //   fontWeight:
                                                            //       FontWeight
                                                            //           .w700,
                                                            //   fontSize: 12,
                                                            //   color: Color(
                                                            //       0xFFFFB563),
                                                            // ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE4F2FF),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: SizedBox(
                                    width: 186,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 30, 0, 18),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 108, 18),
                                            width: 20,
                                            height: 19,
                                            child: SizedBox(
                                              width: 20,
                                              height: 19,
                                              child: SvgPicture.network(
                                                'assets/vectors/Unknown',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 75, 18),
                                            child: Text(
                                              'Work',
                                              // style: GoogleFonts.getFont(
                                              //   'Mulish',
                                              //   fontWeight: FontWeight.w800,
                                              //   fontSize: 20,
                                              //   color: Color(0xFF000000),
                                              // ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(9, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 9, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCAE5FF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              43),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 5, 13.2, 9),
                                                      child: Text(
                                                        '4 left',
                                                        // style:
                                                        //     GoogleFonts.getFont(
                                                        //   'Mulish',
                                                        //   fontWeight:
                                                        //       FontWeight.w700,
                                                        //   fontSize: 12,
                                                        //   color:
                                                        //       Color(0xFF0074E0),
                                                        // ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            43),
                                                  ),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            13, 7, 3.2, 7),
                                                    child: Text(
                                                      '4 done',
                                                      // style:
                                                      //     GoogleFonts.getFont(
                                                      //   'Mulish',
                                                      //   fontWeight:
                                                      //       FontWeight.w700,
                                                      //   fontSize: 12,
                                                      //   color:
                                                      //       Color(0xFF0074E0),
                                                      // ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(43, 0, 43, 201),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 385,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 11, 1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFE8E8),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                      width: 187,
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 35, 0, 17),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 107, 18),
                                              width: 20,
                                              height: 17,
                                              child: SizedBox(
                                                width: 20,
                                                height: 17,
                                                child: SvgPicture.network(
                                                  'assets/vectors/Unknown',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 58.1, 17),
                                              child: Text(
                                                'Health',
                                                // style: GoogleFonts.getFont(
                                                //   'Mulish',
                                                //   fontWeight: FontWeight.w800,
                                                //   fontSize: 20,
                                                //   color: Color(0xFF000000),
                                                // ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 7, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFFD0D0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(43),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 8, 16.2, 6),
                                                        child: Text(
                                                          '4 left',
                                                          // style: GoogleFonts
                                                          //     .getFont(
                                                          //   'Mulish',
                                                          //   fontWeight:
                                                          //       FontWeight.w700,
                                                          //   fontSize: 12,
                                                          //   color: Color(
                                                          //       0xFFF476A3),
                                                          // ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              43),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 8, 3.2, 6),
                                                      child: Text(
                                                        '4 done',
                                                        // style:
                                                        //     GoogleFonts.getFont(
                                                        //   'Mulish',
                                                        //   fontWeight:
                                                        //       FontWeight.w700,
                                                        //   fontSize: 12,
                                                        //   color:
                                                        //       Color(0xFFF476A3),
                                                        // ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF837373)),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  child: Container(
                                    width: 187,
                                    padding: EdgeInsets.fromLTRB(0, 65, 13, 68),
                                    child: Text(
                                      '+ Add',
                                      // style: GoogleFonts.getFont(
                                      //   'Mulish',
                                      //   fontWeight: FontWeight.w800,
                                      //   fontSize: 20,
                                      //   color: Color(0xFF000000),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFBFBFB),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 28.8, 0, 34),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1.3, 48, 17),
                                child: SizedBox(
                                  width: 30,
                                  height: 34,
                                  child: SvgPicture.network(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 47.3, 36.8, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF000000),
                                  ),
                                  child: Container(
                                    width: 180,
                                    height: 5,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 17.8),
                                width: 34.5,
                                height: 34.5,
                                child: SizedBox(
                                  width: 34.5,
                                  height: 34.5,
                                  child: SvgPicture.network(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 178,
                  bottom: 67,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 64,
                      height: 64,
                      padding: EdgeInsets.fromLTRB(13.1, 13.1, 14.1, 14.1),
                      child: SizedBox(
                        width: 36.8,
                        height: 36.7,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 36.8,
                              height: 36.7,
                              child: SvgPicture.network(
                                'assets/vectors/Unknown',
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: SizedBox(
                                width: 36.8,
                                height: 36.7,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: 36.8,
                                      height: 36.7,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: 36.8,
                                        height: 36.7,
                                        child: SizedBox(
                                          width: 36.8,
                                          height: 36.7,
                                          child: SvgPicture.network(
                                            'assets/vectors/Unknown',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
