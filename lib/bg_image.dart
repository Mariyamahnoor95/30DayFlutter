import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/computr.jpeg",
      fit: BoxFit.cover,
      // width: 800,
      // height: 400,
    );
  }
}
