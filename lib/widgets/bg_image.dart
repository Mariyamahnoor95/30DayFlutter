import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/computr.jpeg",
      fit: BoxFit.cover,
      // width: 800,
      // height: 400,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
    Text(
      "wellcome",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
