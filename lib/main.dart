import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to My App "),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [ BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 5,
                  offset: const Offset(2.0, 10.0))
            ],
           
            gradient:
                LinearGradient(colors: [Colors.black, Colors.yellow.shade400]),
          ),
          child: const Text("hey there",
          textAlign: TextAlign.center,
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          ),
        ),
      ),
    );
  }
}
