import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String placeName;
  final String imagePath;
  final List<String> memberImages;
  final String departureDate;
  final int duration;
  final String tripType;
  final double price;

  const DetailScreen({
    super.key,
    required this.placeName,
    required this.imagePath,
    required this.memberImages,
    required this.departureDate,
    required this.duration,
    required this.tripType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(placeName),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              placeName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text('Indonesia', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 16),
            Image.network(imagePath, errorBuilder: (context, error, stackTrace) {
              return const Text('Unable to load image');
            }),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Members are going',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ...memberImages.map((image) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: CircleAvatar(backgroundImage: NetworkImage(image)),
                      );
                    }),
                    const Text('+9', style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Trip informations',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Date of departure: $departureDate'),
                Text('Duration: $duration Days'),
                Text('Type: $tripType'),
                Text('Prices: Rp.${price.toStringAsFixed(2)} / org'),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                    child: const Text('Join Now'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
