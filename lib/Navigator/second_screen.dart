import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SecondScreen'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              child: const Text('increment'),
              onPressed: () {
                Navigator.of(context).pop(number + 1);
              },
            ),
            ElevatedButton(
              child: const Text('decrement'),
              onPressed: () {
                Navigator.of(context).pop(number - 1);
              },
            ),
          ]),
        ));
  }
}
