import 'package:flutter/material.dart';
import 'home_page.dart';
import 'popular_destinations.dart';  // Import the new file
import 'testimonial_page.dart';  // Import the testimonial page file
import 'sign_in_page.dart';

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
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    PaketTravelPage(),
    TestimonialPage(),  // Ensure this is correct
    SignInPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Paket Travel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Testimonial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Sign In',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class PaketTravelPage extends StatelessWidget {
  const PaketTravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopularDestinationsPage();  // Use the new widget
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sign In Page'),
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
