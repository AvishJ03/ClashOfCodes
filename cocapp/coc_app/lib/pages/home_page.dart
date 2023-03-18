// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unused_import, prefer_interpolation_to_compose_strings, unnecessary_cast

import 'package:coc_app/pages/expene.dart';
import 'package:coc_app/pages/google_maps_page.dart';
import 'package:coc_app/pages/itinerary.dart';
import 'package:coc_app/pages/job_page.dart';
import 'package:coc_app/pages/ocr.dart';
import 'package:coc_app/pages/panoa.dart';
import 'package:coc_app/pages/silver_bar_chart.dart';
import 'package:coc_app/pages/travel_buddy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:coc_app/colors.dart' as color;

import '../widgets/data.dart';
import 'animated_drawer.dart';
import 'interests.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late String tokenValue;

  // getTokenFromSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   setState(() {
  //     tokenValue = prefs.getString('token')!;
  //   });
  //   return tokenValue;
  // }

  // @override
  // void initState() {
  // ignore: todo
  //   // TODO: implement initState
  //   getTokenFromSF().then((tokenValue) => {print(tokenValue)});
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9354B9),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF0050AC), Color(0xFF9354B9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'Hello Vinit,',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: const Color(0x7cdbf1ff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/drop_down_icon.png'),
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => AnimatedDrawerPage());
                        if (index == 0) {
                          Get.to(() => HomePageItinerary());
                        } else if (index == 1) {
                          Get.to(() => DoctorSoldier());
                        } else if (index == 2) {
                          Get.to(() => JobHomePage());
                        } else if (index == 3) {
                          Get.to(() => Prescription());
                        } else if (index == 4) {
                          Get.to(() => MapScreen());
                        } else if (index == 5) {
                          Get.to(() => MyExpenseHomePage());
                        }
                        //
                        // else if (index == 6) {
                        //   Get.to(() => MyWidget());
                        // } else if (index == 7) {
                        //   Get.to(() => Dashboard());
                        // } else {
                        //   Get.to(() => EventsPage());
                        // }

                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (context, a, b) => DetailPage(
                        //       planetInfo: planets[index],
                        //       key: null,
                        //     ),
                        //   ),
                        // );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 30,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        planets[index].text,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color:
                                              color.AppColor.primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know more',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: color
                                                  .AppColor.secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: color
                                                .AppColor.secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: planets[index].position,
                            child: Image.asset(
                              planets[index].iconImage,
                              width: 220,
                            ),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              planets[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: color.AppColor.primaryTextColor
                                    .withOpacity(0.1),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: Color(0xFF6751B5),
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Image.asset(
                'assets/menu_icon.png',
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'assets/search_icon.png',
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(() => MyHomePanoa());
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/profile_icon.png',
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(() => Interests());
              },
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline_sharp),
              color: Colors.white,
              onPressed: () {
                // Get.to(() => MyCardsPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
