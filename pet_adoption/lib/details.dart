import 'package:flutter/material.dart';
import 'package:pet_adoption/petsname.dart';
import 'package:widget_zoom/widget_zoom.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'history.dart';

class Detail_page extends StatefulWidget {
  final petname selectedPet;

  Detail_page({required this.selectedPet});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  bool adopted = false;
  List<String> adoptedPetsHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: _viewHistory,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetZoom(
            heroAnimationTag: 'tag',
            zoomWidget: Image.network(
              widget.selectedPet.urlimage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Name:${widget.selectedPet.name}",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 103, 58, 183),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Age:${widget.selectedPet.age}",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 103, 58, 183),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Price:${widget.selectedPet.price}",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 103, 58, 183),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: adopted ? null : () => _adoptPet(context),
                  child: Text("Adopt Me"),
                ),
                ElevatedButton(
                  onPressed: _viewHistory,
                  child: Text("View History"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _adoptPet(BuildContext context) {
    setState(() {
      adopted = true; // Mark the pet as adopted
    });

    // Show a popup with the adopted message
    _showAdoptionPopup();

    // Mark the pet as "Already Adopted" in the home page list
    widget.selectedPet.adoptionStatus = "Already Adopted";

    // Add the adopted pet to history
    adoptedPetsHistory.add(widget.selectedPet.name);

    // Save the updated history
    _saveAdoptedPetsHistory();
  }

  void _showAdoptionPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Adoption Successful"),
          content: Text("You've now adopted ${widget.selectedPet.name}"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _loadAdoptedPetsHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList('adoptedPetsHistory') ?? [];
    setState(() {
      adoptedPetsHistory = history.reversed.toList();
    });
  }

  void _saveAdoptedPetsHistory() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('adoptedPetsHistory', adoptedPetsHistory);
  }

  void _viewHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => History_page()),
    );
  }
}
