import 'package:awesome_app/models/catalog.dart';
import 'package:awesome_app/widgets/drawer.dart';
import 'package:awesome_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, ((index) => CatalogModel.items[0]));
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("catalog page "),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummylist[index]);
        },
      ),
      drawer: DrawerSide(),
    );
  }
}
