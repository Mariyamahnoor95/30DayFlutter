import 'package:awesome_app/bg_image.dart';
import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("login page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.8),
                child: SingleChildScrollView(
                    child: Card(
                  child: Column(children: [
                    Form(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "enter user name",
                                labelText: "username"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "enter password",
                                labelText: "password"),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.8),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red, // background
                                foregroundColor: Colors.white, // foreground
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => HomePage()));
                                Navigator.pushNamed(context, "/home");
                              },
                              child: Text('Sign In'),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ]),
                )),
              ),
            ),
          ],
        ));
  }
}
