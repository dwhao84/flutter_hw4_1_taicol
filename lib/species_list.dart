// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/detailPage.dart';
import 'package:flutter_hw4_1_taicol/taiwan_endemic_species.dart';

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
