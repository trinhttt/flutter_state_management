import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/first_provider.dart';
import 'package:provider_demo/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FirstProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FirstScreen()),
    );
  }
}
