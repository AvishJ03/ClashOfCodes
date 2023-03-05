import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:coc_app/colors.dart' as color;

import 'package:coc_app/widgets/app_large_text.dart';
import 'package:coc_app/widgets/app_text.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> with TickerProviderStateMixin {
  var images = {
    'kayaking.png': 'Kayaking',
    'balloning.png': 'Balloning',
    'snorkling.png': 'Snorkling',
    'hiking.png': 'Hiking',
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 70, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black87,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(.5)),
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(
              text: 'Discover',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 22, right: 20),
                controller: _tabController,
                labelColor: Colors.black87,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CirceTabIndicator(color: Colors.blue.shade100, radius: 4),
                tabs: [
                  Text(
                    'Places',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('Inspiration', style: TextStyle(fontSize: 18)),
                  Text('Emotions', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 200,
                      height: 300,
                      margin: EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/mountain.jpeg'),
                        ),
                      ),
                    );
                  },
                ),
                Text('Hello'),
                Text('Hey'),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 23,
                ),
                child: AppLargeText(
                  text: 'Explore More',
                  size: 24,
                  color: color.AppColor.bigTextColor,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 25, top: 7),
                child: AppText(
                  text: 'See all',
                  size: 16,
                  color: color.AppColor.mainColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 120,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 40, left: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          // margin: EdgeInsets.only(right: 25, left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/' + images.keys.elementAt(index)),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: AppText(
                          text: images.values.elementAt(index),
                          size: 17,
                          color: color.AppColor.textColor2,
                        ))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CirceTabIndicator extends Decoration {
  final Color color;
  double radius;

  CirceTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    // ignore: unused_local_variable
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height + 5);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
