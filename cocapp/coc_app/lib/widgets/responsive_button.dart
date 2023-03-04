import 'package:flutter/material.dart';
import 'package:coc_app/colors.dart' as color;

import 'app_text.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.AppColor.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? AppText(
                    text: 'Book ticket now',
                    color: Colors.white,
                  )
                : Container(),
            Image.asset(
              "assets/button-one.png",
            )
          ],
        ),
      ),
    );
  }
}
