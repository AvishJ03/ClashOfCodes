// ignore_for_file: library_private_types_in_public_api

import 'dart:math' as math;

import 'package:coc_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_bar_chart/sliver_bar_chart.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late final List<BarChartData> _barValues;

  final double _minHeight = AppBar().preferredSize.height;
  final double _xAxisTextRotationAngle = 180.0;
  final int _yAxisIntervalCount = 8;
  double _maxHeight = 500.0;
  double _maxWidth = 10.0;

  final bool _restrain = true;
  final bool _fluctuating = false;
  bool _isScrolling = true;

  final int _sliverListChildCount = 20;

  @override
  void initState() {
    super.initState();
    _setupBarChartValues();

    _scrollController.addListener(() {
      setState(() {
        if (_scrollController.offset.roundToDouble() < 100.0) {
          _maxHeight = 500.0;
          _maxWidth = 10.0;
          _isScrolling = true;
        } else {
          if (_scrollController.offset.roundToDouble() >= 400.0) {
            _maxWidth = _scrollController.offset - 10;
          }
          _isScrolling = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.to(() => HomePage());
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Compare Cost City Wise',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 20),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverBarChart(
                restrain: _restrain,
                fluctuating: _fluctuating,
                minHeight: _minHeight,
                maxHeight: _maxHeight,
                maxWidth: _maxWidth,
                barWidget: BarChartWidget(
                  maxHeight: _maxHeight,
                  minHeight: _minHeight,
                  barValues: _barValues,
                  isScrolling: _isScrolling,
                  yAxisIntervalCount: _yAxisIntervalCount,
                  xAxisTextRotationAngle: _xAxisTextRotationAngle,
                ),
              ),
              // SliverList(
              //   delegate: SliverChildBuilderDelegate(
              //     (BuildContext _, int index) => Container(
              //       color: index.isOdd ? Colors.white : Colors.black12,
              //       child: Center(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Text(
              //             '$index',
              //             textScaleFactor: 3.0,
              //           ),
              //         ),
              //       ),
              //     ),
              //     childCount: _sliverListChildCount,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  void _setupBarChartValues() {
    _barValues = [
      BarChartData(
        x: 'Delhi',
        y: 500.0,
        barColor: _getRandomColor(),
      ),
      BarChartData(
        x: 'Amritsar',
        y: 800.0,
        barColor: _getRandomColor(),
      ),
      BarChartData(
        x: 'Kashmir',
        y: 600.0,
        barColor: _getRandomColor(),
      ),
      BarChartData(
        x: 'Bangalore',
        y: 900.0,
        barColor: _getRandomColor(),
      ),
      BarChartData(
        x: 'Mumbai',
        y: 1000.0,
        barColor: _getRandomColor(),
      ),
    ];
  }

  Color _getRandomColor() {
    return Color(
      (math.Random().nextDouble() * 0xFFFFFF).toInt(),
    ).withOpacity(1.0);
  }
}
