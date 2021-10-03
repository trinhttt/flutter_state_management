import 'package:get/get.dart';
import 'package:getx_demo/screens/first/controller/first_controller.dart';
import 'package:getx_demo/services/api_service.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstController());
    Get.lazyPut(() => APIService());
  }

}