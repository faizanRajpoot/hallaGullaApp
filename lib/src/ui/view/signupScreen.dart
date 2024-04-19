// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/signupController.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../utils/uidata/color.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignUpController _ = Get.find<SignUpController>();
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
              'Create Account',
              style: UIDataDecoration.headingStyle,
            ).paddingOnly(top: 10),
            Text(
              'Enter your Name, Email Phone no and Password to sign up.',
              style: UIDataDecoration.subHeadingStyleGrey,
            ).paddingOnly(bottom: 20),
            CustomTextField(
              controller: _.fullname,
              hintText: 'Full Name',
            ),
            CustomTextField(
              controller: _.email,
              hintText: 'Email Adress',
            ).paddingSymmetric(vertical: 30),
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
              ),
            ),
            Obx(() => istrue.value
                ? const SizedBox()
                : const Text(
                    'Enter a valid phone number',
                    style: TextStyle(color: Colors.red),
                  ).paddingAll(10)),
            Obx(
              () => CustomTextField(
                ontap: () {
                  _.passwordVisibility.toggle();
                },
                controller: _.password,
                obscure: true,
                hintText: 'Password',
                suffixIcon: _.passwordVisibility.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ).paddingSymmetric(vertical: 30),
            ),
            Obx(
              () => CustomTextField(
                ontap: () {
                  _.passwordVisibility.toggle();
                },
                controller: _.confirmpassword,
                obscure: true,
                hintText: 'Confirm Password',
                suffixIcon: _.passwordVisibility.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ),
            ),
            FillButton(
              ontap: () {
                Get.toNamed(Routes.signin);
              },
              color: Colors.red,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    fontSize: Get.width * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ).paddingSymmetric(vertical: Get.height * 0.007),
            ).paddingSymmetric(vertical: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Already have account?',
                  style: UIDataDecoration.subHeadingStyleGrey,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.signin);
                  },
                  child: Text(
                    'SIGN IN',
                    style: UIDataDecoration.subHeadingStyleRed,
                  ),
                )
              ],
            ),
            const ThirdpartyLogin().paddingOnly(top: 20),
          ],
        ).marginSymmetric(horizontal: Get.width * 0.07),
      ),
    );
  }
}
