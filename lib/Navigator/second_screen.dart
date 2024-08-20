import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('SecondScreen'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('戻る'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
  );
}
}

