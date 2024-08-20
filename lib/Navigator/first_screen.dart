import 'package:flutter/material.dart';
import 'package:flutter_playground/Navigator/second_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Second Screen'),
          onPressed: () {
            final NavigatorState navigator = Navigator.of(context);
            final route =
                MaterialPageRoute(builder: (context) => const SecondScreen());
            navigator.push(route);
          },
        ),
      ),
    );
  }
}
