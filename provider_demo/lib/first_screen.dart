import 'package:flutter/material.dart';
import './second_screen.dart';
import './first_provider.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The second screen')),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Count: ${context.watch<FirstProvider>().count}'),
              ElevatedButton(
                  onPressed: () {
                    context.read<FirstProvider>().increment();
                  },
                  child: Text('Increase')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
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
