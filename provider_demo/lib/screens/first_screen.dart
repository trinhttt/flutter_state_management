import 'package:flutter/material.dart';
import 'package:provider_demo/provider/color_provider.dart';
import 'second_screen.dart';
import '../provider/count_provider.dart';
import 'package:provider/provider.dart';

// Using context. watch/read
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The first screen')),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Count: ${context.watch<CountProvider>().count}',
                style: TextStyle(
                    color: context.watch<ColorProvider>().isBlack
                        ? Colors.red
                        : Colors.black),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CountProvider>().increment();
                  },
                  child: Text('Increase')),
              ElevatedButton(
                  onPressed: () {
                    context.read<ColorProvider>().changeColor();
                  },
                  child: Text('Change Color')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('Go to the 2nd screen '),
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
