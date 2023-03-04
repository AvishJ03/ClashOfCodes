import 'package:flutter/material.dart';
import 'package:coc_app/colors.dart' as color;
import 'package:coc_app/widgets/app_large_text.dart';
import 'package:coc_app/widgets/app_text.dart';
import 'package:coc_app/widgets/responsive_button.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-three.png",
    "welcome-two.png",
  ];
  List text = ["Welcome 2", " Welcome 3", "Welcome 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.fill),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 150,
                  right: 20,
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Trips'),
                        AppText(
                          text: 'Mountain',
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppText(
                          text: 'Mountain hikes give you ',
                          color: color.AppColor.textColor2,
                          size: 14,
                        ),
                        AppText(
                          text: 'an incredible sense of freedom',
                          color: color.AppColor.textColor2,
                          size: 14,
                        ),
                        AppText(
                          text: 'along with endurance tests',
                          color: color.AppColor.textColor2,
                          size: 14,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => HomePage());
                          },
                          child: ResponsiveButton(
                            width: 120,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          height: index == indexDots ? 25 : 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: index == indexDots
                                ? color.AppColor.mainColor
                                : color.AppColor.mainColor.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
