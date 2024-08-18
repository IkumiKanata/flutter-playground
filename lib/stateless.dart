import 'package:flutter/material.dart';

void main() {
  runApp(
    const Column(
      children: [
        AnimalView(
          text: 'Cat',
          color: Colors.yellow,
        ),
        AnimalView(
          text: 'Dog',
          color: Colors.blue,
        ),
        AnimalView(
          text: 'Rabbit',
          color: Colors.red,
        ),
      ],
    ),
  );
}

class AnimalView extends StatelessWidget {

  const AnimalView({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100.0,
      height: 100.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12.0,
            color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

