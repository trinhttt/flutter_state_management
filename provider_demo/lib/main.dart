import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/count_provider.dart';
import 'package:provider_demo/provider/color_provider.dart';

import 'package:provider_demo/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// Using 1 provider
    // return ChangeNotifierProvider(
    //   create: (_) => CountProvider(),
    child:
    // MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: FirstScreen()),
    // );

    // Using multi providers

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ColorProvider())
      ],
      child: MaterialApp(
          title: 'Flutter provider',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FirstScreen()),
    );
  }
}
