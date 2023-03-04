import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coc_app/colors.dart' as color;

import '../pages/skill_teaching.dart';
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
                    vertical: color.AppColor.defaultPadding * 2),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Image(
                    image: AssetImage('lib/images/mourn.png'),
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
                        'Employment\nOppurtunities',
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
                        'Available Openings :',
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
                                backgroundImage:
                                    AssetImage('lib/images/school3.jpeg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '   Product Tester\n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  TextSpan(
                                      text: 'NimuSoft Labs',
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
                              label: 'Design',
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
                              '\Rs.30,000/month',
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
                                  horizontal: color.AppColor.defaultPadding,
                                  vertical: color.AppColor.defaultPadding - 8),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('lib/images/school1.jpeg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '         Analyst\n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  TextSpan(
                                      text: 'Sanghvi Laboratory',
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
                              label: 'Analyst',
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
                              'Delhi, Mumbai',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                            Text(
                              'Rs.40,000/month',
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
                                backgroundImage:
                                    AssetImage('lib/images/school4.jpeg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: color.AppColor.defaultPadding,
                              ),
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '   Product Analyser\n     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  TextSpan(
                                      text: 'Synapse Laboratory',
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
                              label: 'Design',
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
                              'Rs.16000/month',
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
                        'Applied Jobs',
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
                      imgSrc: 'lib/images/school5.jpeg',
                      company: 'Army School',
                      jobName: 'Teacher',
                      salary: 'Rs.30,000/month',
                    ),
                  ),
                  RecommendCard(
                    imgSrc: 'lib/images/school7.jpeg',
                    company: 'Facebook',
                    jobName: 'Engineer',
                    salary: 'Rs.19000/month',
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
