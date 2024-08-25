import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('number = 0'),
            ElevatedButton(
              child: const Text('Go to Second Screen from First'),
              onPressed: () async {
                GoRouter.of(context).go('/second');
              },
            ),
            ElevatedButton(onPressed: () {
              GoRouter.of(context).go('/second/third');
            }, child: const Text('Go to Third Screen from First')),
          ],
        ),
      ),
    );
  }
}