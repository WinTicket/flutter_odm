import 'dart:io';

import 'package:flutter/material.dart';
import 'package:odm/odm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    // Only iOS works. Executing this in Android will not work.
    Odm().initiateWithEmail("abc@gmail.com");

    // Typical Placeholder
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running'),
        ),
      ),
    );


  }
}
