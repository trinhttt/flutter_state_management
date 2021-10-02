import 'package:get/get.dart';

class FirstController extends GetxController {
  var count = 0.obs;

  increment() => count++;

  // RxInt count = 0.obs;
  // void increment() => count.value++;
}
