import 'package:flutter/material.dart';

class SelfIntro extends StatelessWidget {
  const SelfIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        '喜歡做點有趣App的App工程師!?',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}
