// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, duplicate_import, unused_import, sized_box_for_whitespace

import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:coc_app/colors.dart' as color;

import 'animated_drawer.dart';
import 'home_page.dart';
import 'itinerary.dart';
import 'main_child.dart';

class AnimatedDrawerPage extends StatefulWidget {
  const AnimatedDrawerPage({super.key});

  @override
  State<AnimatedDrawerPage> createState() => _AnimatedDrawerPageState();
}

class _AnimatedDrawerPageState extends State<AnimatedDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawer(
        homePageXValue: 150,
        homePageYValue: 80,
        homePageAngle: -0.2,
        homePageSpeed: 250,
        shadowXValue: 160,
        shadowYValue: 90,
        shadowAngle: -0.275,
        shadowSpeed: 550,
        openIcon:
            Icon(Icons.menu_open, color: Color(0xFF1f186f).withOpacity(.1)),
        closeIcon: Icon(Icons.arrow_back_ios,
            color: Color(0xFF1f186f).withOpacity(.1)),
        shadowColor: Color.fromARGB(255, 195, 193, 209),
        backgroundGradient: LinearGradient(
          colors: [Color(0xFF4c41a3), Color.fromARGB(255, 195, 193, 209)],
        ),
        menuPageContent: Padding(
          padding: const EdgeInsets.only(top: 160.0, left: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset('lib/images/.png'),
                // FlutterLogo(
                //   size: MediaQuery.of(context).size.width / 4,
                // ),
                Row(
                  children: [
                    Text(
                      "Help",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Centre",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue[200],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                ),
                Text(
                  "Other :",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Poppins',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => EducationalVideo());
                  },
                  child: Text(
                    "  Compare",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => DoctorSoldier());
                  },
                  child: Text(
                    "  3D View",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => HomePage());
                  },
                  child: Text(
                    "  HomePage",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Divider(
                  color: Color(0xFF5950a0),
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        homePageContent: HomePage()
        // MainChild()
        // Scaffold(
        //     backgroundColor: color.AppColor.homePageBackground,
        //     body: SafeArea(
        //       child: Column(
        //         children: [
        //           // Padding(
        //           //   padding: const EdgeInsets.all(20.0),
        //           //   child: Row(
        //           //     crossAxisAlignment: CrossAxisAlignment.start,
        //           //     children: [
        //           //       InkWell(
        //           //           onTap: () {
        //           //             Get.to(() => AnimatedDrawerPage());
        //           //           },
        //           //           child: Icon(Icons.menu)),
        //           //     ],
        //           //   ),
        //           // ),
        //           Container(
        //             padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        //             child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Row(
        //                     children: [
        //                       Container(
        //                         height: 180,
        //                         width: 351,
        //                         child: Stack(
        //                           children: [
        //                             Container(
        //                                 width:
        //                                     MediaQuery.of(context).size.width,
        //                                 margin: EdgeInsets.only(top: 30),
        //                                 height: 120,
        //                                 decoration: BoxDecoration(
        //                                     borderRadius:
        //                                         BorderRadius.circular(20),
        //                                     image: DecorationImage(
        //                                         image: AssetImage(
        //                                             'lib/images/card.jpg'),
        //                                         fit: BoxFit.fill),
        //                                     boxShadow: [
        //                                       BoxShadow(
        //                                           blurRadius: 40,
        //                                           offset: Offset(8, 10),
        //                                           color: color
        //                                               .AppColor.gradientSecond
        //                                               .withOpacity(.5)),
        //                                       BoxShadow(
        //                                           blurRadius: 10,
        //                                           offset: Offset(-1, -5),
        //                                           color: color
        //                                               .AppColor.gradientSecond
        //                                               .withOpacity(.2))
        //                                     ])),
        //                             Container(
        //                                 height: 200,
        //                                 width:
        //                                     MediaQuery.of(context).size.width,
        //                                 margin: EdgeInsets.only(
        //                                     right: 180, bottom: 40),
        //                                 decoration: BoxDecoration(
        //                                   // color: Colors.redAccent.withOpacity(.3),
        //                                   borderRadius:
        //                                       BorderRadius.circular(20),
        //                                   image: DecorationImage(
        //                                     image: AssetImage(
        //                                       'lib/images/figure.png',
        //                                     ),
        //                                     // fit: BoxFit.fill
        //                                   ),
        //                                 )),
        //                             Container(
        //                               width: double.maxFinite,
        //                               height: 100,
        //                               // color: Colors.redAccent.withOpacity(0.)
        //                               margin:
        //                                   EdgeInsets.only(left: 150, top: 50),
        //                               child: Column(
        //                                 children: [
        //                                   Text(
        //                                     'You are doing great',
        //                                     style: TextStyle(
        //                                         fontSize: 19,
        //                                         fontWeight: FontWeight.bold,
        //                                         color: color
        //                                             .AppColor.homePageDetail),
        //                                   ),
        //                                   SizedBox(height: 10),
        //                                   Container(
        //                                     margin: EdgeInsets.only(right: 40),
        //                                     child: RichText(
        //                                       text: TextSpan(
        //                                         text: 'Keep it up\n',
        //                                         style: TextStyle(
        //                                             color: color.AppColor
        //                                                 .homePagePlanColor,
        //                                             fontSize: 16),
        //                                         children: [
        //                                           TextSpan(
        //                                               text:
        //                                                   'Stick to your plan')
        //                                         ],
        //                                       ),
        //                                     ),
        //                                   )
        //                                 ],
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),

        //                       // Expanded(
        //                       //   child: ListView(
        //                       //     children: [
        //                       //       Row(
        //                       //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                       //         children: [
        //                       //           Container(
        //                       //             width: 150,
        //                       //             height: 150,
        //                       //             decoration: BoxDecoration(
        //                       //                 borderRadius: BorderRadius.circular(30),
        //                       //                 color: Colors.grey[200]),
        //                       //             child: Container(
        //                       //               padding: EdgeInsets.only(bottom: 5),
        //                       //               decoration: BoxDecoration(
        //                       //                 color: Colors.white,
        //                       //                 borderRadius: BorderRadius.circular(15),
        //                       //                 image: DecorationImage(
        //                       //                   image: AssetImage('assets/ex1.png'),
        //                       //                 ),
        //                       //                 boxShadow: [
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(5, 5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(-5, -5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                 ],
        //                       //               ),
        //                       //               child: Center(
        //                       //                 child: Align(
        //                       //                   alignment: Alignment.bottomCenter,
        //                       //                   child: Text(
        //                       //                     'Glutes',
        //                       //                     style: TextStyle(
        //                       //                         fontSize: 20,
        //                       //                         color: color.AppColor.StackCardHorizontalDetail),
        //                       //                   ),
        //                       //                 ),
        //                       //               ),
        //                       //             ),
        //                       //           ),
        //                       //           Container(
        //                       //             width: 150,
        //                       //             height: 150,
        //                       //             decoration: BoxDecoration(
        //                       //                 borderRadius: BorderRadius.circular(30),
        //                       //                 color: Colors.grey[200]),
        //                       //             child: Container(
        //                       //               padding: EdgeInsets.only(bottom: 5),
        //                       //               decoration: BoxDecoration(
        //                       //                 color: Colors.white,
        //                       //                 borderRadius: BorderRadius.circular(15),
        //                       //                 image: DecorationImage(
        //                       //                   image: AssetImage('assets/ex2.png'),
        //                       //                 ),
        //                       //                 boxShadow: [
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(5, 5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(-5, -5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                 ],
        //                       //               ),
        //                       //               child: Center(
        //                       //                 child: Align(
        //                       //                   alignment: Alignment.bottomCenter,
        //                       //                   child: Text(
        //                       //                     'Abs',
        //                       //                     style: TextStyle(
        //                       //                         fontSize: 20,
        //                       //                         color: color.AppColor.StackCardHorizontalDetail),
        //                       //                   ),
        //                       //                 ),
        //                       //               ),
        //                       //             ),
        //                       //           ),
        //                       //         ],
        //                       //       ),
        //                       //       SizedBox(
        //                       //         height: 20,
        //                       //       ),
        //                       //       Row(
        //                       //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                       //         children: [
        //                       //           Container(
        //                       //             width: 150,
        //                       //             height: 150,
        //                       //             decoration: BoxDecoration(
        //                       //                 borderRadius: BorderRadius.circular(30),
        //                       //                 color: Colors.grey[200]),
        //                       //             child: Container(
        //                       //               padding: EdgeInsets.only(bottom: 5),
        //                       //               decoration: BoxDecoration(
        //                       //                 color: Colors.white,
        //                       //                 borderRadius: BorderRadius.circular(15),
        //                       //                 image: DecorationImage(
        //                       //                     image: AssetImage('assets/ex3.png')),
        //                       //                 boxShadow: [
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(-5, -5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(5, 5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                 ],
        //                       //               ),
        //                       //               child: Center(
        //                       //                 child: Align(
        //                       //                   alignment: Alignment.bottomCenter,
        //                       //                   child: Text(
        //                       //                     'Legs',
        //                       //                     style: TextStyle(
        //                       //                         fontSize: 20,
        //                       //                         color: color.AppColor.StackCardHorizontalDetail),
        //                       //                   ),
        //                       //                 ),
        //                       //               ),
        //                       //             ),
        //                       //           ),
        //                       //           Container(
        //                       //             width: 150,
        //                       //             height: 150,
        //                       //             decoration: BoxDecoration(
        //                       //                 borderRadius: BorderRadius.circular(30),
        //                       //                 color: Colors.grey[200]),
        //                       //             child: Container(
        //                       //               padding: EdgeInsets.only(bottom: 5),
        //                       //               decoration: BoxDecoration(
        //                       //                 color: Colors.white,
        //                       //                 borderRadius: BorderRadius.circular(15),
        //                       //                 image: DecorationImage(
        //                       //                     image: AssetImage('assets/ex4.png')),
        //                       //                 boxShadow: [
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(5, 5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                   BoxShadow(
        //                       //                       offset: Offset(-5, -5),
        //                       //                       blurRadius: 3,
        //                       //                       color: color.AppColor.gradientSecond
        //                       //                           .withOpacity(.3)),
        //                       //                 ],
        //                       //               ),
        //                       //               child: Center(
        //                       //                 child: Align(
        //                       //                   alignment: Alignment.bottomCenter,
        //                       //                   child: Text(
        //                       //                     'Arms',
        //                       //                     style: TextStyle(
        //                       //                         fontSize: 20,
        //                       //                         color: color.AppColor.StackCardHorizontalDetail),
        //                       //                   ),
        //                       //                 ),
        //                       //               ),
        //                       //             ),
        //                       //           ),
        //                       //         ],
        //                       //       )
        //                       //     ],
        //                       //   ),
        //                       // )
        //                     ],
        //                   ),
        //                 ]),
        //           ),
        //         ],
        //       ),
        //     ))
        );
  }
}

      // Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   color: Colors.blue[200],
      //   child: Center(
      //     child: Image.network(
      //       "https://user-images.githubusercontent.com/38032118/105316779-2a480980-5be3-11eb-900e-18fcd599493d.png",
      //       height: MediaQuery.of(context).size.height / 2,
      //     ),
      //   ),
      // ),
   