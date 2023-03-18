// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:coc_app/colors.dart' as color;

class Interests extends StatefulWidget {
  const Interests({super.key});

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.black,
        title: Text(
          '                 Interests',
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 25),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/photography.jpeg'),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Photgraphy',
                            style: TextStyle(
                                fontSize: 26,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/staycation.jpeg'),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Staycation',
                            style: TextStyle(
                                fontSize: 26,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/blogger.jpeg'),
                              fit: BoxFit.contain),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Blogger',
                            style: TextStyle(
                                fontSize: 26,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/foodie.jpeg')),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Foodie',
                            style: TextStyle(
                                fontSize: 26,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/backpack.jpeg')),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Backpack',
                            style: TextStyle(
                                fontSize: 26,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/adventure.jpeg')),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(5, 5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          //   BoxShadow(
                          //       offset: Offset(-5, -5),
                          //       blurRadius: 3,
                          //       color: color.AppColor.gradientSecond
                          //           .withOpacity(.3)),
                          // ],
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                color: Colors.grey.withOpacity(.6))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Adventure',
                            style: TextStyle(
                                fontSize: 30,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
