import 'package:flutter/material.dart';
import 'package:awesome_app/utils/routes.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, MyRoutes.loginRoutes)),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(16.0),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.lightGreen,
        ),
        child: const Text('sign in'),
      ),
    );
  }
}
