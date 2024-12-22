import 'package:flutter/material.dart';
import 'package:flutter_hw4_1_taicol/taiwan_endemic_plant.dart';

class PlantDetailPage extends StatelessWidget {
  final TaiwanEndemicPlant plants;

  const PlantDetailPage({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 55, 24),
        title: Text(
          plants.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlantImage(plants: plants),
            CustomPadding(plants: plants),
          ],
        ),
      ),
    );
  }
}

// Custom Padding
class CustomPadding extends StatelessWidget {
  const CustomPadding({
    super.key,
    required this.plants,
  });

  final TaiwanEndemicPlant plants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlantName(plants: plants),
          const SizedBox(height: 8),
          PlantDescription(plants: plants),
        ],
      ),
    );
  }
}

// Plant Image
class PlantImage extends StatelessWidget {
  const PlantImage({
    super.key,
    required this.plants,
  });

  final TaiwanEndemicPlant plants;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      plants.image,
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }
}

// Plant Name
class PlantName extends StatelessWidget {
  const PlantName({
    super.key,
    required this.plants,
  });

  final TaiwanEndemicPlant plants;

  @override
  Widget build(BuildContext context) {
    return Text(
      plants.name,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Plant Image
class PlantDescription extends StatelessWidget {
  const PlantDescription({
    super.key,
    required this.plants,
  });

  final TaiwanEndemicPlant plants;

  @override
  Widget build(BuildContext context) {
    return Text(
      plants.description,
      style: const TextStyle(fontSize: 16),
    );
  }
}
