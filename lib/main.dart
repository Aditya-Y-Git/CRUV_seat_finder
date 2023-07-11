import 'package:flutter/material.dart';
import 'package:seat_finder/screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(useMaterial3: true),
      home: const Expanded(child: HomeScreen()),
    ),
  );
}
