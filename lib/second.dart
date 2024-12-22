// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/rows/about_me.dart';
import 'package:flutter_hw4_1_taicol/lists/species_list.dart';
import 'package:flutter_hw4_1_taicol/rows/taiwan_plant.dart';
import 'package:flutter_hw4_1_taicol/rows/taiwan_species.dart';
import 'lists/plant_list.dart';
// import 'taiwan_endemic_species.dart';
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
