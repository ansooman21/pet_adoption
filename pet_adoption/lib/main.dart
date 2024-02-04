import 'package:flutter/material.dart';
import 'package:pet_adoption/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Light theme settings
        primaryColor: Color.fromARGB(255, 153, 106, 234),
        hintColor: Color.fromARGB(255, 153, 106, 234),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Dark theme settings
        primaryColor: Color.fromARGB(255, 153, 106, 234),
        hintColor: Color.fromARGB(255, 153, 106, 234),
        backgroundColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[850],
      ),
      home: Home_page(),
    );
  }
}
