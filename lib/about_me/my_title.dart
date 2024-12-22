import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '軟體工程師',
      style: TextStyle(
        fontSize: 18,
        color: Colors.grey,
      ),
    );
  }
}
