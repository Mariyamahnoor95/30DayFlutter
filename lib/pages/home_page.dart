import 'package:flutter/material.dart';

import '../change_name_card.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var mytext = "change me";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Wellcome to My App "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.8),
        child: SingleChildScrollView(
          child: Card(
            child:
                ChangeNameCard(mytext: mytext, nameController: _nameController),
          ),
        ),
      ),
      drawer: DrawerSide(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
