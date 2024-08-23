import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/Navigator/second_screen.dart';
import 'package:flutter_playground/Navigator/second_screen.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('number = 0'),
            ElevatedButton(
              child: const Text('戻る'),
              onPressed: () async {
                // Navigator.of(context).pushNamed('/second');
                GoRouter.of(context).pop();
              },
            ),
            ElevatedButton(onPressed: () {
              GoRouter.of(context).go('/second/third');
            }, child: const Text('Go to Third Screen from Second')),
          ],
        ),
      ),
    );
  }
}