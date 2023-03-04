// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coc_app/pages/chat.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome_page.dart';

// void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,

        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          // CurvedNavigationBarItem(
          //   child: Icon(Icons.newspaper),
          //   label: 'Feed',
          // ),
          // CurvedNavigationBarItem(
          //   child: Icon(Icons.perm_identity),
          //   label: 'Personal',
          // ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),

        onTap: (index) {
          setState(() {
            if (index == 0) {
              Get.to(() => WelcomePage());
            }
            if (index == 1) {
              Get.to(() => ChatPage());
            }
          });
        },
        // letIndexChange: (index) => true,
      ),
      body: Container(),
    );
  }
}
