import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpController extends GetxController {
  RxBool passwordVisibility = false.obs;
  RxBool confirmPasswordVisibility = false.obs;
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  Rx<PhoneNumber> phoneNumber = PhoneNumber(isoCode: 'PK').obs;

  // void onPhoneNumberChanged(PhoneNumber number) {
  //   phoneNumber.value = number;
  // }

  // bool validatePhoneNumber() {
  //   return phoneNumber.value.phoneNumber != null &&
  //       phoneNumber.value.phoneNumber!.isNotEmpty;
  // }
}
