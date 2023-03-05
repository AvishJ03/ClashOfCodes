// ignore_for_file: import_of_legacy_library_into_null_safe, duplicate_ignore, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, missing_required_param, unnecessary_string_interpolations, unused_import, unnecessary_import, unused_local_variable

// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:coc_app/colors.dart' as color;

import '../widgets/doctor_card.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'main_child.dart';

class DoctorSoldier extends StatefulWidget {
  const DoctorSoldier({Key? key}) : super(key: key);

  @override
  State<DoctorSoldier> createState() => _DoctorSoldierState();
}

class _DoctorSoldierState extends State<DoctorSoldier> {
  var currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            title: Text(
              "Travel Companion",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.to(() => LoginPage());
              },
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            children: [
              Container(
                height: 60,
                width: 340,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xFFEEF6FC),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.search,
                      size: 28,
                      color: Color(0xFF8AA0BC),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Search Schools...',
                      style: TextStyle(color: Color(0xFF8AA0BC)),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Image.asset('assets/Vector.png')
                  ],
                ),
              ),
              // SizedBox(
              //   height: 25,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Text('Live Doctors',
              //           style: TextStyle(
              //               color: Color(0xFF253141),
              //               fontSize: 18,
              //               fontFamily: 'Poppins',
              //               fontWeight: FontWeight.w600)),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   height: 80,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 10.0),
              //     child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc11.png')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc15.jpg')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc13.png')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc14.jpg')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc12.png')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc16.jpg')),
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 30,
              //           width: 80,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage('lib/images/doc17.jpg')),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Popular Schools',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 580,
                width: 360,
                child: ListView(
                  children: [
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Backpacker, Frequent Traveler',
                      doctorName: 'Drishti Jain',
                      image2: 'assets/friend1.png',
                      text3: '4.5 (5 reviews)',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Not a Frequent Traveler',
                      doctorName: 'Avish Jain',
                      image2: 'assets/friend2.png',
                      text3: '4.2 (8 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Experienced Traveler',
                      doctorName: 'Hetvi Solanki',
                      image2: 'assets/friend3.png',
                      text3: '4.7 (4 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Wanderlust',
                      doctorName: 'Vinit Shah',
                      image2: 'assets/friend4.png',
                      text3: '4.5 (5 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Backpacker, Frequent Traveler',
                      doctorName: 'Hetvi',
                      image2: 'assets/friend5.png',
                      text3: '4.5 (5 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Green Lawns',
                      doctorName: 'Vinit',
                      image2: 'assets/person3.jpeg',
                      text3: '4.5 (5 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Drishti',
                      doctorName: 'Sardar Patel',
                      image2: 'assets/person2.jpeg',
                      text3: '4.5 (5 reviews)',
                    ),
                    PopularCard(
                      color1: Colors.white,
                      disease1: 'Veteran',
                      doctorName: 'Avish',
                      image2: 'assets/person1.jpeg',
                      text3: '4.5 (5 reviews)',
                    ),
                    // PopularCard(
                    //   color1: Colors.white,
                    //   disease1: 'School for families of veterans',
                    //   doctorName: 'Dr. Mirgh',
                    //   image2: 'assets/friend1.png',
                    //   text3: '4.5 (5 reviews)',
                    // ),
                    // PopularCard(
                    //   color1: Colors.white,
                    //   disease1: 'School for families of veteransl',
                    //   doctorName: 'Dr. Ronnit',
                    //   image2: 'assets/friend1.png',
                    //   text3: '4.5 (5 reviews)',
                    // ),
                    // PopularCard(
                    //   color1: Colors.white,
                    //   disease1: 'School for families of veteransl',
                    //   doctorName: 'Dr. Hetvi',
                    //   image2: 'assets/friend1.png',
                    //   text3: '4.5 (5 reviews)',
                  ],
                ),
              )
            ],
          ),
          // bottomNavigationBar: Container(
          //   margin: EdgeInsets.all(displayWidth * .05),
          //   height: displayWidth * .155,
          //   decoration: BoxDecoration(
          //     color: color.AppColor.homePageBackground,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black.withOpacity(.1),
          //         blurRadius: 30,
          //         offset: Offset(0, 10),
          //       ),
          //     ],
          //     borderRadius: BorderRadius.circular(50),
          //   ),
          //   child: ListView.builder(
          //     itemCount: 4,
          //     scrollDirection: Axis.horizontal,
          //     padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          //     itemBuilder: (context, index) => InkWell(
          //       onTap: () {
          //         setState(() {
          //           currentIndex = index;
          //           HapticFeedback.lightImpact();
          //           if (index == 1) {
          //             Get.to(() => DoctorSoldier());
          //           } else if (index == 2) {
          //             Get.to(() => Benefits());
          //           } else if (index == 3) {
          //             Get.to(() => HomePage());
          //           } else if (index == 0) {
          //             Get.to(() => MainChild());
          //           }
          //         });
          //       },
          //       splashColor: Colors.transparent,
          //       highlightColor: Colors.transparent,
          //       child: Stack(
          //         children: [
          //           AnimatedContainer(
          //             duration: Duration(seconds: 1),
          //             curve: Curves.fastLinearToSlowEaseIn,
          //             width: index == currentIndex
          //                 ? displayWidth * .32
          //                 : displayWidth * .18,
          //             alignment: Alignment.center,
          //             child: AnimatedContainer(
          //               duration: Duration(seconds: 1),
          //               curve: Curves.fastLinearToSlowEaseIn,
          //               height: index == currentIndex ? displayWidth * .12 : 0,
          //               width: index == currentIndex ? displayWidth * .32 : 0,
          //               decoration: BoxDecoration(
          //                 color: index == currentIndex
          //                     ? Colors.blueAccent.withOpacity(.2)
          //                     : Colors.transparent,
          //                 borderRadius: BorderRadius.circular(50),
          //               ),
          //             ),
          //           ),
          //           AnimatedContainer(
          //             duration: Duration(seconds: 1),
          //             curve: Curves.fastLinearToSlowEaseIn,
          //             width: index == currentIndex
          //                 ? displayWidth * .31
          //                 : displayWidth * .18,
          //             alignment: Alignment.center,
          //             child: Stack(
          //               children: [
          //                 Row(
          //                   children: [
          //                     AnimatedContainer(
          //                       duration: Duration(seconds: 1),
          //                       curve: Curves.fastLinearToSlowEaseIn,
          //                       width: index == currentIndex
          //                           ? displayWidth * .13
          //                           : 0,
          //                     ),
          //                     AnimatedOpacity(
          //                       opacity: index == currentIndex ? 1 : 0,
          //                       duration: Duration(seconds: 1),
          //                       curve: Curves.fastLinearToSlowEaseIn,
          //                       child: Text(
          //                         index == currentIndex
          //                             ? '${listOfStrings[index]}'
          //                             : '',
          //                         style: TextStyle(
          //                           color: Colors.blueAccent,
          //                           fontWeight: FontWeight.w600,
          //                           fontSize: 15,
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     AnimatedContainer(
          //                       duration: Duration(seconds: 1),
          //                       curve: Curves.fastLinearToSlowEaseIn,
          //                       width: index == currentIndex
          //                           ? displayWidth * .03
          //                           : 20,
          //                     ),
          //                     Icon(
          //                       listOfIcons[index],
          //                       size: displayWidth * .076,
          //                       color: index == currentIndex
          //                           ? Colors.blueAccent
          //                           : Colors.black26,
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }

  // List<IconData> listOfIcons = [
  //   Icons.home_rounded,
  //   Icons.favorite_rounded,
  //   Icons.account_balance_outlined,
  //   Icons.person_rounded,
  // ];

  // List<String> listOfStrings = [
  //   'Fitness',
  //   'Schools',
  //   'Benefits',
  //   'Blogs',
  // ];
}
