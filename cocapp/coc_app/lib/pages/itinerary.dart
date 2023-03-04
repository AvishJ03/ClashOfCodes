// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:coc_app/widgets/locations_widget.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class HomePageItinerary extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 251, 255),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'ITINERARY',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.location_pin,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: InkWell(
              onTap: () {
                Get.to(() => LoginPage());
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
        ),

        // AppBar(
        //   elevation: 0,
        //   backgroundColor: Color(0xffc8eff9),
        // ),
        body: LocationsWidget(),
        bottomNavigationBar: buildBottomNavigation(),
      );

  Widget buildBottomNavigation() => BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      );
}
