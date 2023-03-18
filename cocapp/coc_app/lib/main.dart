// ignore_for_file: prefer_const_constructors, unused_import

import 'package:coc_app/pages/animated_drawer.dart';
import 'package:coc_app/pages/chat.dart';
import 'package:coc_app/pages/get_started.dart';
import 'package:coc_app/pages/job_page.dart';

import 'package:coc_app/pages/login_page.dart';
import 'package:coc_app/pages/panoa.dart';
import 'package:coc_app/pages/travel_buddy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/bottom_bar.dart';
import 'pages/curved_bar.dart';
import 'pages/expene.dart';
import 'pages/home_page.dart';
import 'pages/interests.dart';
import 'pages/itinerary.dart';
import 'pages/ocr.dart';
import 'pages/photo.dart';
import 'pages/silver_bar_chart.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GetStarted());
  }
}
