import 'package:flutter/material.dart';

import 'package:coc_app/colors.dart' as color;
import '../widgets/work_categories.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color.AppColor.bgColor,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image(image: AssetImage('lib/images/school1.jpeg'), height: 80),
                SizedBox(height: 30),
                Text(
                  'Teacher',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(height: 5),
                Text(
                  'Army School',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WorkCategories(
                      label: 'Full Time',
                    ),
                    WorkCategories(
                      label: 'Teaching',
                    ),
                    WorkCategories(
                      label: 'Junior',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Description',
                style: TextStyle(color: Colors.white54, fontSize: 18),
              ),
              Text(
                'Requirements',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'About',
                style: TextStyle(color: Colors.white54, fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            '(1)  Master’s Degree in Design and Computer Science,\n       ',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 25),
          Text(
            '(2)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 25),
          Text(
            '(3)   Having Computer interactions, or a releated field',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 25),
          Text(
            '(4)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 25),
          Text(
            '(5)   Have a Computer interaction, or a releated field',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 25),
          Text(
            '(6)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
