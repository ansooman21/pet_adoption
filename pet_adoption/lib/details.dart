import 'package:flutter/material.dart';
import 'package:pet_adoption/petsname.dart';

class Detail_page extends StatefulWidget {
  final petname selectedPet;

  Detail_page({required this.selectedPet});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  bool adopted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            widget.selectedPet.urlimage,
            fit: BoxFit.cover,
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
          ElevatedButton(
            onPressed: adopted ? null : () => _adoptPet(),
            child: Text("Adopt Me"),
          ),
        ],
      ),
    );
  }

  void _adoptPet() {
    setState(() {
      adopted = true; // Mark the pet as adopted
    });

    // Show a popup with the adopted message
    _showAdoptionPopup();

    // Mark the pet as "Already Adopted" in the home page list
    widget.selectedPet.adoptionStatus = "Already Adopted";

    // TODO: Save the adoption status to maintain it across app launches
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
}
