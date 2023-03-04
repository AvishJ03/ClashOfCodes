// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:coc_app/widgets/hero_tag.dart';
import 'package:coc_app/widgets/locations.dart';
import 'package:coc_app/widgets/location.dart';
import 'package:coc_app/widgets/review.dart';
import 'package:coc_app/widgets/hero_widget.dart';

class LatLongWidget extends StatelessWidget {
  final Location location;

  const LatLongWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            location.latitude,
            style: TextStyle(color: Colors.white70),
          ),
          Icon(Icons.location_on, color: Colors.white70),
          Text(
            location.longitude,
            style: TextStyle(color: Colors.white70),
          )
        ],
      );
}
