import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class History_page extends StatefulWidget {
  const History_page({Key? key}) : super(key: key);

  @override
  State<History_page> createState() => _History_pageState();
}

class _History_pageState extends State<History_page> {
  List<String> adoptedPetsHistory = [];

  @override
  void initState() {
    super.initState();
    _loadAdoptedPetsHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adopted Pets History'),
      ),
      body: ListView.builder(
        itemCount: adoptedPetsHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(adoptedPetsHistory[index]),
          );
        },
      ),
    );
  }

  Future<void> _loadAdoptedPetsHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList('adoptedPetsHistory') ?? [];
    setState(() {
      adoptedPetsHistory = history.reversed.toList();
    });
  }
}
