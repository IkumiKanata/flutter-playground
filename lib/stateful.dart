import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Center(
    child: Counter(),
  )));
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    //wrap this with gesture detector
    return GestureDetector(
      onTap: () {
        //increment the count
        setState(() {
          _count++;
        });
      },
      child: Container(
        color: Colors.blue,
        width: 100.0,
        height: 100.0,
        child: Center(
          child: Text("$_count"),
        ),
      ),
    );
  }
}
