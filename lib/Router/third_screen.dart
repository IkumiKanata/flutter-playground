import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdScreen'),
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
          ],
        ),
      ),
    );
  }
}
