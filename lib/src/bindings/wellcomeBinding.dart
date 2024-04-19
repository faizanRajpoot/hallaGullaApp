import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/wellcomeController.dart';

class WellcomeBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<WellcomeController>(() => WellcomeController());
  }
}