import 'package:flutter/material.dart';
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

// 顯示我個人照片
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

class MyName extends StatelessWidget {
  const MyName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Dawei',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

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
