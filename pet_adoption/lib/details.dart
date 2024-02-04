import 'package:flutter/material.dart';
import 'package:pet_adoption/petsname.dart';

class Detail_page extends StatefulWidget {
  //const Detail_page({super.key});
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
          children: [
            Image.network(
              widget.selectedPet.urlimage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 400,
            ),
          ],
        ));
  }
}
