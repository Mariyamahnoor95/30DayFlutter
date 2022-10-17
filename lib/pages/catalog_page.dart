import 'package:awesome_app/models/catalog.dart';
import 'package:awesome_app/widgets/drawer.dart';
import 'package:awesome_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson); //string to map
    final productData = decodeData["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(20, ((index) => CatalogModel.items[0]));

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("catalog page "),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: DrawerSide(),
    );
  }
}
