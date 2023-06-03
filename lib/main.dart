import 'package:flutter/material.dart';
import 'package:emergency_app/home_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palembang Emergency App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomeScreen(),
    );
  }
}
