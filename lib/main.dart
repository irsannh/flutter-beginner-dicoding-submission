import 'package:dicoding_submission_app_irsan/page/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Football News App',
      theme: ThemeData(),
      home: const WelcomePage(),
    );
  }
}
