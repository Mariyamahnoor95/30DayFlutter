import 'package:awesome_app/utils/routes.dart';
import 'package:awesome_app/widgets/bg_image.dart';
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
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

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
                        key: _formkey,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "wellcome $name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "enter user name",
                                    labelText: "username"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                onChanged: ((value) {
                                  name = value;
                                  setState(() {});
                                }),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  } else if (value.length < 8) {
                                    return 'password length should be atleast 8';
                                  }
                                  return null;
                                },
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
                                child: Material(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(
                                      changeButton ? 20 : 10),
                                  child: InkWell(
                                    onTap: () => moveToHome(context),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      width: changeButton ? 70 : 150,
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                // child: ElevatedButton(
                                //   style: ElevatedButton.styleFrom(
                                //       backgroundColor: Colors.red, // background
                                //       foregroundColor: Colors.white,
                                //       minimumSize: Size(150, 50) // foreground
                                //       ),
                                //   onPressed: () {
                                //     print("hi mahnoor");
                                //     // Navigator.push(
                                //     //     context,
                                //     //     MaterialPageRoute(
                                //     //         builder: (context) => HomePage()));
                                //     Navigator.pushNamed(context, "/home");
                                //   },
                                //   child: Text('Sign In'),
                                // ),
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
