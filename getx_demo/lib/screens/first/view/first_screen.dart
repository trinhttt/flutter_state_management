import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../second/view/second_screen.dart';
import '../controller/first_controller.dart';
import '../../../services/api_service.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final FirstController controller = Get.put(FirstController());
    // final APIService apiService = Get.put(APIService());

    final controller = Get.find<FirstController>();
    final apiService = Get.find<APIService>();

    return Scaffold(
      appBar: AppBar(title: Text('The second screen')),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(() => Text('${'hello'.tr} \n count: ${controller.count}')),
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Increase')),
              ElevatedButton(
                  onPressed: () {
                    apiService.fetchData();
                  },
                  child: Text('Fetch data')),
              ElevatedButton(
                  onPressed: () {
                    // print('${Get.deviceLocale}');
                    var locale = Get.locale == Locale('vi', 'VN')
                        ? Locale('en', 'EN')
                        : Locale('vi', 'VN');
                    Get.updateLocale(locale);
                  },
                  child: Text('Change locale')),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SecondScreen()));
                  // Get.to(SecondScreen());
                  // Get.off(SecondScreen());
                  // Get.offAll(SecondScreen());
                  Get.toNamed('/second');
                  // Get.snackbar('hi', 'message');
                  // Get.defaultDialog(title: 'messs');
                },
                child: Text('Go to next screen '),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
