import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ImageEdit(),
  ));
}

class ImageEdit extends StatelessWidget {
  const ImageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Image Edit'),
      ),
    );
  }
}
