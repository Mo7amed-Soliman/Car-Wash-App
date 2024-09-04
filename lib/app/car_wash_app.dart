import 'package:flutter/material.dart';

class CarWashApp extends StatelessWidget {
  const CarWashApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Car Wash App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Car Wash App',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
