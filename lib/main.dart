import 'package:flutter/material.dart';
import 'package:pics_lab/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piclab',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
