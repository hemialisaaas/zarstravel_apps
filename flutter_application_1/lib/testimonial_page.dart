import 'package:flutter/material.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testimonial Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Customer Testimonials',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'See what our happy customers have to say about our services.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  TestimonialCard(
                    name: 'Angga Luthfafi',
                    quote: 'It was glorious and I am so happy of it!',
                    trip: 'Trip to Ubud',
                    imagePath: 'assets/testimonial-1.jpg',
                    locationImagePath: 'assets/testimonial-1.jpg',
                  ),
                  TestimonialCard(
                    name: 'Fadhil Jaidi',
                    quote: 'The trip was amazing and I\'m so happy of it!',
                    trip: 'Trip to Nusa Penida',
                    imagePath: 'assets/testimonial-2.jpg',
                    locationImagePath: 'assets/testimonial-2.jpg',
                  ),
                  TestimonialCard(
                    name: 'Dede Inoen',
                    quote: 'I loved it when I was shaking harder and harder!',
                    trip: 'Trip to Karimun Jawa',
                    imagePath: 'assets/testimonial-3.jpg',
                    locationImagePath: 'assets/testimonial-3.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String quote;
  final String trip;
  final String imagePath;
  final String locationImagePath;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.quote,
    required this.trip,
    required this.imagePath,
    required this.locationImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5.0,
      shadowColor: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imagePath),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              quote,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.deepPurple,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    trip,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset(locationImagePath),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TestimonialPage(),
  ));
}
