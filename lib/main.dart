import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Aula teste...'),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 17, 187, 213),
        ),
      ),
    ),
  );
}