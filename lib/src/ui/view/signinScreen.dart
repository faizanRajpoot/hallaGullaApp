// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../controllers/signinController.dart';
import '../../utils/routes/appRoutes.dart';
import '../../utils/uidata/color.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final SignInController _ = Get.find<SignInController>();
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
            Obx(
              () => TextFormField(
                controller: _.password,
                obscureText: _.passwordVisibility.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        _.passwordVisibility.toggle();
                      },
                      icon: Icon(
                        _.passwordVisibility.value
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      )),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Get.height * 0.028,
                      horizontal: Get.width * 0.04),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ).paddingOnly(top: 20, bottom: 10),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.forgotpassword);
              },
              child: Center(
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.red, fontSize: 22)),
              ).paddingOnly(bottom: 50),
            ),
            FillButton(
              ontap: () {
                Get.toNamed(Routes.home);
              },
              color: Colors.red,
              child: Text(
                'SIGN IN',
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
                  "Don't have account?",
                  style: UIDataDecoration.subHeadingStyleGrey,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.signup);
                  },
                  child: Text(
                    'Create new account',
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
