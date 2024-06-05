import 'package:flutter/material.dart';
import 'detail_screen.dart';  // Import the detail screen

void main() {
  runApp(const ZarsTravelApp());
}

class ZarsTravelApp extends StatelessWidget {
  const ZarsTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZarsTravel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network('assets/logo.png', height: 50),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Home", style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Paket Travel", style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Testimonial", style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Sign In", style: TextStyle(color: Colors.black)),
          ),
        ],
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  const Text(
                    'Popular Destination',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Something that you never try before in this world',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildDestinationCard(context, 'Indonesia', 'DERATAN, BALI', 'assets/popular-1.jpg'),
                        _buildDestinationCard(context, 'Indonesia', 'BROMO, MALANG', 'assets/popular-2.jpg'),
                        _buildDestinationCard(context, 'Indonesia', 'NUSA PENIDA', 'assets/popular-3.jpg'),
                        _buildDestinationCard(context, 'Middle East', 'DUBAI', 'assets/popular-4.jpg'),
                      ],
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
            const Footer(),
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
            width: 150,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            width: 150,
            height: 250,
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
                    fontSize: 12, // Mengubah ukuran font
                  ),
                ),
                Text(
                  destination,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14, // Mengubah ukuran font
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

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFooterColumn('FEATURES', ['Reviews', 'Community', 'Social Media Kit', 'Affiliate']),
              _buildFooterColumn('ACCOUNT', ['Refund', 'Security', 'Rewards']),
              _buildFooterColumn('COMPANY', ['Career', 'Help Center', 'Media']),
              _buildFooterColumn('GET CONNECTED', [
                'BojongSoang',
                'Bandung, Indonesia',
                '0823-2308-8800',
                'support@zarstravel.id'
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooterColumn(String title, List<String> items) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text(item),
              )),
        ],
      ),
    );
  }
}
