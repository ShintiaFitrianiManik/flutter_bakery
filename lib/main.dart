import 'package:flutter/material.dart';
import 'pages/started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartedPage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
