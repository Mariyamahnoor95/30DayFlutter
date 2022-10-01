import 'package:awesome_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var mytext = "change me";
  var urll = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(urll));
    data = jsonDecode(res.body);
    // print(res.body);
    setState(() {});
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
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("ID : ${data[index]["id"]}"),
                        leading: Image.network(data[index]["url"]),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
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
