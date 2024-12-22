// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class TaiwanSpecies extends StatelessWidget {
  const TaiwanSpecies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/MOA_logo.png",
          fit: BoxFit.contain,
          height: 32,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            '台灣特有動物',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
