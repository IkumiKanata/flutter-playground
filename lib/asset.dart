import 'package:flutter/material.dart';
import 'gen/assets.gen.dart';

const endPoint = String.fromEnvironment('apiEndpoint');
const logLevel = int.fromEnvironment('logLevel');
const enableDebugMenu = bool.fromEnvironment('enableDebugMenu');




void main() {
  print('endPoint: $endPoint');
  print('logLevel: $logLevel');
  print('enableDebugMenu: $enableDebugMenu');
  runApp(
    const MaterialApp(
      home: HomeScreen(),
      ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Assets.circle.image(
            width: 100.0,
            height: 100.0,
          ),
          Assets.check.svg(
            width: 100.0,
            height: 100.0,
          )
          ]
        )

      ),
    );
  }
}