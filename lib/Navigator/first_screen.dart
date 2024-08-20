import 'package:flutter/material.dart';
import 'package:flutter_playground/Navigator/second_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FirstScreen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('number = $_number'),
              ElevatedButton(
                child: const Text('Go to Second Screen'),
                onPressed: () async {
                  final newNumber = await Navigator.of(context).push<int>(
                    MaterialPageRoute(
                      builder: (_) => SecondScreen(number: _number),
                    ),
                  );
                  setState(() {
                    if (newNumber != null) {
                      _number = newNumber;
                    }
                  });
                },
              ),
            ],
          ),
        ));
  }
}
