import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class UIDataDecoration {
  // < ------------------------------------- Define Decoration Here ----------------------->

  static final headingStyle = TextStyle(
      color: Colors.white,
      fontSize: Get.width * 0.08,
      fontWeight: FontWeight.w700);

  static final subHeadingStyleGrey = TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: Get.width * 0.045,
      fontWeight: FontWeight.w200);

  static final subHeadingStyleRed = TextStyle(
      color: Colors.red,
      fontSize: Get.width * 0.045,
      fontWeight: FontWeight.w200);
  // static final preHeadingStyle = TextStyle(
  //     color: Color(0xffFFFFFF),
  //     fontSize: Get.width * 0.05,
  //     fontWeight: FontWeight.w200);
}
