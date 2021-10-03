import 'package:flutter/material.dart';
import 'package:getx_demo/screens/first/binding/first_binding.dart';
import 'package:getx_demo/screens/second/view/second_screen.dart';
import 'screens/first/view/first_screen.dart';
import 'package:get/get.dart';
import 'utils/translation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/first', page: () => FirstScreen(), binding: FirstBinding()),
        GetPage(name: '/second', page: () => SecondScreen(), binding: FirstBinding())
      ],
      initialRoute: '/first',
      // home: FirstScreen(),
      translations: Messages(), // your translations
      locale: Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'UK'), // specify the fallback locale in case an invalid locale is selected.
    );
  }
}

