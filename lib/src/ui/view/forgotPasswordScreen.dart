// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../controllers/forgotPasswordController.dart';
import '../../utils/routes/appRoutes.dart';
import '../../utils/uidata/color.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final ForgotPasswordController _ = Get.find<ForgotPasswordController>();
  RxBool istrue = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIDataColors.commonColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIGN IN',
              style: UIDataDecoration.headingStyle,
            ).paddingOnly(top: 10),
            Text(
              'Enter your Phone number for sign in.',
              style: UIDataDecoration.subHeadingStyleGrey,
            ).paddingOnly(bottom: 20),
            Obx(
              () => CustomPhoneField(
                initialValue: _.phoneNumber.value,
                controller: _.phonenumber,
                hintText: 'Enter phone number',
                ontap: (PhoneNumber number) {
                  if (_.phonenumber.text.length == 10) {
                    _.phoneNumber.value = number;
                    istrue.value = true;
                  } else {
                    istrue.value = false;
                  }
                },
              ).paddingOnly(top: 20),
            ),
            Obx(() => istrue.value
                ? const SizedBox()
                : const Text(
                    'Enter a valid phone number',
                    style: TextStyle(color: Colors.red),
                  ).paddingAll(10)),
            FillButton(
              ontap: () {
                Get.toNamed(Routes.signin);
              },
              color: Colors.red,
              child: Text(
                'NEXT',
                style: TextStyle(
                    fontSize: Get.width * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ).paddingSymmetric(vertical: Get.height * 0.007),
            ).paddingSymmetric(vertical: 20),
          ],
        ).marginSymmetric(horizontal: Get.width * 0.07),
      ),
    );
  }
}
