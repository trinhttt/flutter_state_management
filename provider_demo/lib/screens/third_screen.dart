import 'package:flutter/material.dart';
import 'package:provider_demo/provider/color_provider.dart';
import '../provider/count_provider.dart';
import 'package:provider/provider.dart';

// Using consumer
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<CountProvider, ColorProvider>(
      builder: (context, countProvider, colorProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('The third screen'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Count: ${countProvider.count}',
                    style: TextStyle(
                        color: colorProvider.isBlack
                            ? Colors.red
                            : Colors.black),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        countProvider.increment();
                      },
                      child: Text('Increase')),
                  ElevatedButton(
                      onPressed: () {
                        colorProvider.changeColor();
                      },
                      child: Text('Change Color')),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
