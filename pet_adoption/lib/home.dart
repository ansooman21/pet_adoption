import 'package:flutter/material.dart';
import 'package:pet_adoption/details.dart';
import 'package:pet_adoption/petsname.dart';

class Home_page extends StatefulWidget {
  //const Home_page({super.key});
  final controller = TextEditingController();
  List<petname> Pname = allpetname;

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to Pet-Shop!",
          style:
              TextStyle(fontSize: 22, color: Color.fromARGB(255, 203, 82, 224)),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(191, 194, 194, 0.774),
                labelText: 'Search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: searchpetname,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.Pname.length,
              itemBuilder: (context, index) {
                final petname = widget.Pname[index];

                return ListTile(
                  leading: Image.network(
                    petname.urlimage,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(petname.name),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detail_page(selectedPet: petname),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }

  void searchpetname(String query) {
    final suggestion = allpetname.where((petname) {
      final petnametitle = petname.name.toLowerCase();
      final input = query.toLowerCase();

      return petnametitle.contains(input);
    }).toList();
    setState(() => widget.Pname = suggestion);
  }
}
