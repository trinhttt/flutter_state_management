import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../first/controller/first_controller.dart';
import '../../../services/api_service.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FirstController controller = Get.find();
    final APIService apiService = Get.find<APIService>();

    return Scaffold(
      appBar: AppBar(title: Text('The first screen')),
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${controller.count}')),
            Text('data: ${apiService.data == '' ? 'empty' : apiService.data } '),
            ElevatedButton(
                onPressed: controller.increment, child: Text('Increase + ')),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back();
              },
              child: Text('Back to previous screen'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
