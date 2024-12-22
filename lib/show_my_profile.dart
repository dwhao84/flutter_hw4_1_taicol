import 'package:flutter/material.dart';

class ShowMyProfile extends StatelessWidget {
  const ShowMyProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        // 顯示我的大頭照
        'assets/Profile.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
