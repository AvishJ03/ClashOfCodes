// ignore_for_file: prefer_const_constructors

import 'package:coc_app/pages/chat.dart';
import 'package:coc_app/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
