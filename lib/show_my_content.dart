import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/about_page.dart';

class ShowMyContent extends StatelessWidget {
  const ShowMyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 顯示我個人網頁的icon
        IconButton(
          icon: const Icon(Icons.public),
          onPressed: () {
            // Call show portfoilo
            showMyPortfoilo();
          },
        ),
        const SizedBox(width: 20),
        // 顯示我個人GitHub的icon
        IconButton(
            icon: const Icon(Icons.terminal),
            onPressed: () {
              // Call show GitHub function
              showGitHub();
            }),
      ],
    );
  }
}
