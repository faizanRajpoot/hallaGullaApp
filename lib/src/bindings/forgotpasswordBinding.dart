import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/forgotPasswordController.dart';
import '../controllers/signinController.dart';

class ForgotpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
