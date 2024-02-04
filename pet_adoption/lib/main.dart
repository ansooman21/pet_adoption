//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 103, 58, 183)),
        useMaterial3: true,
      ),
      home: Home_page(),
    );
  }
}
