import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/signupController.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
