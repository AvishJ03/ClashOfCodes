// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page.dart';

class AppointmentUserSkills extends StatefulWidget {
  // String user;
  // String doctorName;
  // String fullName;
  // String img;
  // String speciality;
  // String rating;

  // AppointmentUser(
  //     {
  //     //   required this.user,
  //     // required this.doctorName,
  //     // required this.img,
  //     // required this.fullName,
  //     // required this.rating,
  //     // required this.speciality
  //     });
  @override
  State<AppointmentUserSkills> createState() => _AppointmentUserSkillsState();
}

class _AppointmentUserSkillsState extends State<AppointmentUserSkills> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: Text(
              '   Add Events',
              style: TextStyle(fontSize: 24),
            ),
          ),
          leading: InkWell(
              onTap: () {
                Get.to(() => HomePage());
              },
              child: Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 140,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          color: Colors.grey.withOpacity(.1)),
                      BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          color: Colors.grey.withOpacity(.3))
                    ],
                  ),
                  child: Icon(
                    Icons.cloud_upload_rounded,
                    size: 100,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Upload Video',
                  style: TextStyle(
                      fontFamily: 'Poppins,',
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Short tagline',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //     height: 10,
                    //     width: 20,
                    //     decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //             image: AssetImage('lib/images/Star.png'),
                    //             ),
                    //             ),
                    //             ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '8 mins',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 7),
                  height: 225,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Color(0xFFD7DEEA),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Write description of video....',
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 12, fontFamily: 'Poppins')),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: SlideAction(
                      elevation: 0,
                      // innerColor: Colors.deepPurpleAccent,
                      outerColor: Colors.deepPurpleAccent,
                      text: '      Slide To Upload',
                      sliderButtonIcon: Icon(
                        Icons.lock_open,
                      ),
                      onSubmit: () {},
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),
                // Padding(
                //     padding: const EdgeInsets.only(left: 40.0),
                //     child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Container(
                //             width: 310,
                //             height: 60,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(40),
                //               color: Color(0xFF1C6BA4),
                //             ),
                //             child: Center(
                //                 child: TextButton(
                //               onPressed: () async {
                //                 String url =
                //                     "https://meet.jit.si/MathematicalDiversitiesTranslateInstead";
                //                 Uri uri = Uri.parse(url);
                //                 await launchUrl(uri,
                //                     mode: LaunchMode.externalApplication);
                //               },
                //               child: Text(
                //                 'Consult Now',
                //                 style: TextStyle(
                //                     color: Colors.white, fontSize: 22),
                //               ),
                //             )),
                //           )
                //         ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
