// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'plant_list.dart';
import 'detailPage.dart';
import 'taiwan_endemic_species.dart';
import 'about_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// List of _appBarTitles
  List<Widget> get _appBarTitles => [
        const TaiwanSpecies(),
        const TaiwanPlant(),
        const AboutMe(),
      ];

// List of pages：
  late final List<Widget> page = [
    const SpeciesList(),
    const PlantList(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 55, 24),
        title: _appBarTitles[_selectedIndex],
      ),
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flutter_dash),
            label: '動物',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: '植物',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: '關於',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor:
            const Color.fromARGB(255, 21, 55, 24), // Match app bar color
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

// Row for Taiwan Species
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

// Row for Taiwan Plant
class TaiwanPlant extends StatelessWidget {
  const TaiwanPlant({
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
            '台灣特有植物',
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

// Row for About me
class AboutMe extends StatelessWidget {
  const AboutMe({
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
            '關於我',
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

// SpeciesList
class SpeciesList extends StatelessWidget {
  const SpeciesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8),
      itemCount: taiwanEndemicSpecies.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 20,
        color: Color.fromARGB(255, 198, 198, 198),
        thickness: 1,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(taiwanEndemicSpecies[index].image),
          ),
          title: Text(
            taiwanEndemicSpecies[index].name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(taiwanEndemicSpecies[index].description),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  species: taiwanEndemicSpecies[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
