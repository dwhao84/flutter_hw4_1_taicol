// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'detailPage.dart';
import 'taiwan_endemic_species.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 55, 24),
        title: Row(
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
                '台灣特有種',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ), // Added missing closing parenthesis for title: Row(
      ), // Added missing closing parenthesis for appBar: AppBar(

      body: SpeciesList(),
    );
  }
}

class SpeciesList extends StatelessWidget {
  const SpeciesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
          title: Text(taiwanEndemicSpecies[index].name),
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
