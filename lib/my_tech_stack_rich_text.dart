import 'package:flutter/material.dart';

class MyTechStackRichText extends StatelessWidget {
  const MyTechStackRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: const TextSpan(
        style: TextStyle(color: Color.fromARGB(221, 91, 91, 91)),
        children: [
          TextSpan(
            text: '\n專長領域：\n',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'Mobile App 開發\n',
            style: TextStyle(fontSize: 16),
          ),
          TextSpan(
            text: 'Flutter / iOS / Python',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
