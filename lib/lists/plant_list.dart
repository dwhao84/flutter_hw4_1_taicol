// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/detail_pages/plantDetailPage.dart';
import 'package:flutter_hw4_1_taicol/datas/taiwan_endemic_plants.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8),
      itemCount: taiwanEndemicPlants.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 20,
        color: Color.fromARGB(255, 198, 198, 198),
        thickness: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(taiwanEndemicPlants[index].image),
          ),
          title: Text(
            taiwanEndemicPlants[index].name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(taiwanEndemicPlants[index].description),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlantDetailPage(
                  plants: taiwanEndemicPlants[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
