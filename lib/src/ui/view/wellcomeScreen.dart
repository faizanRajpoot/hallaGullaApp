import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';
import 'package:halagula_app/src/utils/uidata/color.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: UIDataColors.commonColor,
        body: Center(
          child: Column(children: [
            Image.asset(
              'assets/images/halagulalogo.png',
              fit: BoxFit.fill,
            ),
            Text(
              'Welcome to Hala Gula',
              style: TextStyle(
                  color: UIDataColors.whiteColor,
                  fontSize: Get.width * 0.07,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Text(
              'Pakistan’s No. 1 \nOnline Booking Agency',
              style: UIDataDecoration.subHeadingStyleGrey,
              textAlign: TextAlign.center,
            ),
            FillButton(
              ontap: () {
                Get.toNamed(Routes.signin);
              },
              color: Colors.red,
              child: Text('SIGN IN',
                      style: TextStyle(
                          color: UIDataColors.whiteColor,
                          fontSize: Get.width * 0.07,
                          fontWeight: FontWeight.w500))
                  .paddingSymmetric(vertical: Get.height * 0.007),
            ),
            FillButton(
              ontap: () {
                Get.toNamed(Routes.signup);
              },
              color: UIDataColors.whiteColor,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    fontSize: Get.width * 0.07,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
              ).paddingSymmetric(vertical: Get.height * 0.007),
            ),
            const ThirdpartyLogin(),
          ]).marginSymmetric(horizontal: Get.width * 0.07),
        ));
  }
}
