import 'package:flutter/material.dart';
import 'package:flutter_playground/Router/third_screen.dart';
import 'package:go_router/go_router.dart';

import './first_screen.dart';
import './second_screen.dart';


void main() {
  runApp(
    MaterialApp.router(
      routerConfig: _router,
    ),
  );
}

final _router = GoRouter(
  routes: [
    GoRoute(
  path: '/',
builder: (context, state) => const FirstScreen(),
),
GoRoute(
    path: '/second',
  builder: (context, state) => const SecondScreen(),
),
GoRoute(
path: '/third',
builder: (context, state) => const ThirdScreen(),
),
  ],
);