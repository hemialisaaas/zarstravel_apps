import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network('assets/logo.png', height: 50),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'assets/header.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.black.withOpacity(0.3),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Jelajahi Dunia bersama ZarsTravel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Pesan dan nikmati perjalanan yang menyenangkan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoCard('20K', 'Members'),
                  _buildInfoCard('12', 'Countries'),
                  _buildInfoCard('3k', 'Hotels'),
                  _buildInfoCard('72', 'Partners'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                 Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
  child: Text(
    'ZarsTravel is a premier travel agency dedicated to crafting unforgettable travel experiences across the globe. With a passion for excellence and a commitment to personalized service, we pride ourselves on providing top-notch services that cater to the unique needs and desires of each of our clients. Our expert team of travel consultants possesses extensive knowledge and expertise, enabling us to offer meticulously planned itineraries, exclusive access to hidden gems, and seamless travel arrangements.\n\n'
    'At ZarsTravel, we understand that every journey is more than just a trip; it\'s a collection of cherished memories and life-changing adventures. Whether you\'re seeking a luxurious escape to a tropical paradise, an immersive cultural exploration in a historic city, or an exhilarating adventure in the great outdoors, we have the perfect itinerary for you. Our curated travel packages are designed to ensure that every aspect of your journey exceeds your expectations.\n\n'
    'We collaborate with a network of trusted partners worldwide to provide exceptional accommodations, guided tours, and unique experiences that are tailored to your preferences. From the moment you contact us to the time you return home, our dedicated team is here to assist you with every detail, ensuring a stress-free and enjoyable travel experience.\n\n'
    'Choose ZarsTravel for your next adventure and discover why we are the leading travel agency trusted by discerning travelers around the world. Let us turn your travel dreams into reality, one unforgettable journey at a time.',
    style: TextStyle(
      fontSize: 16,
      color: Colors.grey,
    ),
    textAlign: TextAlign.center,
  ),
),

                ],
              ),
            ),
              
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  const Text(
                    'They are Loving Us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'See what our customers are saying',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      _buildTestimonialCard('Angga Luthfafi', 'It was glorious and I am so happy of it!', 'Trip to Ubud', 'assets/testimonial-1.png'),
                      const SizedBox(height: 20),
                      _buildTestimonialCard('Fadhil Jaidi', 'The trip was amazing and I\'m so happy of it!', 'Trip to Nusa Penida', 'assets/testimonial-2.png'),
                      const SizedBox(height: 20),
                      _buildTestimonialCard('Dede Inoen', 'I loved it when I was shaking harder and harder!', 'Trip to Karimun Jawa', 'assets/testmonial-3.png'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  const Text(
                    'Popular Destinations',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildDestinationCard(context, 'Indonesia', 'Deratan, Bali', 'https://example.com/deratan_bali.jpg'),
                  const SizedBox(height: 20),
                  _buildDestinationCard(context, 'Indonesia', 'Bromo, Malang', 'https://example.com/bromo_malang.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }

  Widget _buildDestinationCard(BuildContext context, String country, String destination, String imageUrl) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.black.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  country,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  destination,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen(
                        placeName: destination,
                        duration: 5,
                        imagePath: imageUrl,
                        memberImages: const ['assets/member-1.png', 'assets/member-2.png', 'assets/member-3.png'],
                        departureDate: 'January 1, 2024',
                        tripType: 'Open Trip',
                        price: 1200.00,
                      )),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
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

  Widget _buildTestimonialCard(String name, String feedback, String trip, String imageUrl) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              feedback,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              trip,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
