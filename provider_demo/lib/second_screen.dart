import 'package:flutter/material.dart';
import './first_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<FirstProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('The first screen')),
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: ${context.watch<FirstProvider>().count}'),
            ElevatedButton(
                onPressed: () {
                  // context.read<FirstProvider>().increment();
                  counterModel.increment();
                },
                child: Text('Increase')),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
