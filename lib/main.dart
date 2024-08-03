import 'package:flutter/material.dart';
import 'calender_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dooboolab flutter calendar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(
        title: 'Flutter Calendar Carousel',
      ),
    );
  }
}
