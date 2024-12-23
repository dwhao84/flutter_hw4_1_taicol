import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

// 設定 Material app：
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.white,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // initializer
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  // MARK: - 畫面自動傳到下一頁。
  Future<void> _navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, animation, secondaryAnimation) => const SecondPage(),
        transitionsBuilder: (_, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          );
        },
        // 轉換 500 毫秒
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

// 製作Widget的頁面：
// 顯示 農業部的logo。
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/MOG_banner.jpg",
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
