import 'package:awesome_app/pages/startup_namer.dart';
import 'package:awesome_app/widgets/drawer.dart';
import 'package:awesome_app/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Welcome to My Application",
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "this So far,  it seems difficult but i can do this  app is use for shopping the letest things this So far,  it seems difficult but i can do this  app is use for shopping the letest thin")),
            MyButton(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // background
                  foregroundColor: Colors.white,
                  minimumSize: Size(150, 50) // foreground
                  ),
              onPressed: () {
                print("hi mahnoor");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartupNamer()));
                // Navigator.pushNamed(context, "/home");
              },
              child: Text('Startup Name Generator'),
            ),
          ],
        ),
      ),
      drawer: DrawerSide(),
    );
  }
}
