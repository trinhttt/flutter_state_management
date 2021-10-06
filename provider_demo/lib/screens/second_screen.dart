import 'package:flutter/material.dart';
import 'package:provider_demo/provider/color_provider.dart';
import '../provider/count_provider.dart';
import 'package:provider/provider.dart';
import 'third_screen.dart';

// Using Provider.of
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CountProvider>(context);
    final colorProvider = Provider.of<ColorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('The second screen'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Count: ${counterProvider.count}',
                style: TextStyle(
                    color: colorProvider.isBlack
                        ? Colors.red
                        : Colors.black),
              ),
              ElevatedButton(
                  onPressed: () {
                    // context.read<FirstProvider>().increment();
                    counterProvider.increment();
                  },
                  child: Text('Increase')),
              ElevatedButton(
                  onPressed: () {
                    colorProvider.changeColor();
                  },
                  child: Text('Change Color')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                child: Text('Go to the 3rd screen '),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
