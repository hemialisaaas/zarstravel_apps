import 'package:flutter/material.dart';

class PopularDestinationsPage extends StatelessWidget {
  const PopularDestinationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Destinations'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DestinationCard(
            destinationName: 'Deratan, Bali',
            location: 'Indonesia',
            imagePath: 'assets/popular-1.jpg',
          ),
          DestinationCard(
            destinationName: 'Bromo, Malang',
            location: 'Indonesia',
            imagePath: 'assets/popular-2.jpg',
          ),
          DestinationCard(
            destinationName: 'Nusa Penida',
            location: 'Indonesia',
            imagePath: 'assets/popular-3.jpg',
          ),
          DestinationCard(
            destinationName: 'Dubai',
            location: 'Middle East',
            imagePath: 'assets/popular-4.jpg',
          ),
          // Add more destinations here
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String destinationName;
  final String location;
  final String imagePath;

  const DestinationCard({
    super.key,
    required this.destinationName,
    required this.location,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  destinationName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the detail screen if necessary
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('View Details'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
