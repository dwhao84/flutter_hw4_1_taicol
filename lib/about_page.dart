import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/my_name.dart';
import 'package:flutter_hw4_1_taicol/my_tech_stack_rich_text.dart';
import 'package:flutter_hw4_1_taicol/my_title.dart';
import 'package:flutter_hw4_1_taicol/self_intro.dart';
import 'package:flutter_hw4_1_taicol/show_my_content.dart';
import 'package:flutter_hw4_1_taicol/show_my_profile.dart';
import 'package:url_launcher/url_launcher.dart'; // 加上url_launcher.dart 才有辦法開啟網頁
import 'package:google_fonts/google_fonts.dart'; // 加上google_font的package

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                // 在子類別裡面把照片裁成圓形
                child: const ShowMyProfile(),
              ),
              // 加上SizedBox
              const SizedBox(height: 20),
              // 加上自己的名字
              const MyName(),
              // 加上SizedBox
              const SizedBox(height: 10),
              // 軟體工程師的標題。
              const MyTitle(),
              const SizedBox(height: 15),
              // 自我介紹的內容。
              const SelfIntro(),
              // 顯示Rich Text
              const MyTechStackRichText(),
              // 加上SizedBox
              const SizedBox(height: 20),
              const ShowMyContent(),
            ],
          ),
        ),
      ),
    );
  }
}

// 顯示我的GitHub網站：
void showGitHub() async {
  final Uri gitHub = Uri.parse("https://github.com/dwhao84"); // 使用 Uri
  if (await canLaunchUrl(gitHub)) {
    await launchUrl(gitHub);
  } else {
    throw 'Could not launch $gitHub';
  }
}

// 顯示我個人履歷內容：
void showMyPortfoilo() async {
  var url = Uri.parse("https://dwhao84.github.io/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
