import 'dart:js';

import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/loginPage.dart';
import 'package:awesome_app/utils/routes.dart';
import 'package:awesome_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awesome App",
      home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": ((context) => LoginPage()),
        MyRoutes.homeRoutes: ((context) => HomePage()),
        MyRoutes.loginRoutes: ((context) => LoginPage())
      },
    );
  }
}
