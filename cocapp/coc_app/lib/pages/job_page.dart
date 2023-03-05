// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coc_app/colors.dart' as color;
import 'skill_teaching.dart';

import '../widgets/recommended.dart';
import '../widgets/work_categories.dart';
import 'jobs_detail.dart';

class JobHomePage extends StatelessWidget {
  const JobHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: color.AppColor.defaultPadding,
                    vertical: color.AppColor.defaultPadding * 1.4),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Image(
                    image: AssetImage('assets/mourn.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: color.AppColor.defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Places to Visit',
                        style: TextStyle(
                            fontSize: 30,
                            color: color.AppColor.bgColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: color.AppColor.defaultPadding,
                  right: color.AppColor.defaultPadding,
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 0.0)),
                    fillColor: color.AppColor.bgColor2,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white54),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: color.AppColor.defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Guides :',
                        style: TextStyle(
                            color: color.AppColor.bgColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: color.AppColor.defaultPadding * 2,
                        horizontal: color.AppColor.defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  child: InkWell(
                                      onTap: () {
                                        Get.to(() => AppointmentUserSkills());
                                      },
                                      child: Center(
                                          child: Text(
                                        'Skill Teaching',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                      ))),
                                );
                              });
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(
                              color: color.AppColor.bgColor, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: 360,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.06,
                    // width: 350,
                    decoration: BoxDecoration(
                      color: color.AppColor.bgColor2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: color.AppColor.defaultPadding,
                                  vertical: color.AppColor.defaultPadding - 8),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/user3.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: 'Mr.Hargun Singh \n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  TextSpan(
                                      text: 'NimuSoft agency',
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 14))
                                ]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WorkCategories(
                              label: 'Full Time',
                            ),
                            WorkCategories(
                              label: 'Travel',
                            ),
                            WorkCategories(
                              label: 'Junior',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Delhi, India',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                            Text(
                              'Rating:4.5*',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.06,
                    // width: 350,
                    decoration: BoxDecoration(
                      color: color.AppColor.bgColor2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      color.AppColor.defaultPadding + 12,
                                  vertical: color.AppColor.defaultPadding - 8),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/user4.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '  Mr.Udayan Vats\n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  TextSpan(
                                      text: '        SS Tours',
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 14))
                                ]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WorkCategories(
                              label: 'Part Time',
                            ),
                            WorkCategories(
                              label: 'Travel',
                            ),
                            WorkCategories(
                              label: 'Senior',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Delhi, Mumbai',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                            Text(
                              'Rating: 4.2*',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.06,
                    // width: 350,
                    decoration: BoxDecoration(
                      color: color.AppColor.bgColor2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: color.AppColor.defaultPadding,
                                  vertical: color.AppColor.defaultPadding - 8),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/user2.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '   Ms. Drishti Jain\n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  TextSpan(
                                      text: 'IETE Tours',
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 14))
                                ]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WorkCategories(
                              label: 'Full Time',
                            ),
                            WorkCategories(
                              label: 'Travel',
                            ),
                            WorkCategories(
                              label: 'Junior',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'India, Mumbai',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                            Text(
                              'Rating: 4.8*',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: color.AppColor.defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Happening Events',
                        style: TextStyle(
                            color: color.AppColor.bgColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: color.AppColor.defaultPadding * 2,
                        horizontal: color.AppColor.defaultPadding),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    },
                    child: RecommendCard(
                      imgSrc: 'assets/school5.jpeg',
                      company: 'Sasoon Docks',
                      jobName: 'Art Festival',
                      salary: 'Rs.300/person',
                    ),
                  ),
                  RecommendCard(
                    imgSrc: 'assets/school7.jpeg',
                    company: 'Trinityk',
                    jobName: 'Culutural Fest',
                    salary: 'Rs.190month',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
