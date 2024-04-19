import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ForgotPasswordController extends GetxController {
  // RxBool passwordVisibility = false.obs;
  // RxBool confirmPasswordVisibility = false.obs;
  // TextEditingController fullname = TextEditingController();
  // TextEditingController email = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  // TextEditingController password = TextEditingController();
  // TextEditingController confirmpassword = TextEditingController();
  Rx<PhoneNumber> phoneNumber = PhoneNumber(isoCode: 'PK').obs;
}
