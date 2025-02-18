import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F2FF), // Light blue background
      appBar: AppBar(
        backgroundColor: Color(0xFFE6F2FF), // Light blue background
        elevation: 0, // Remove app bar shadow
        title: Row(
          children: [
            Text(
              '👋 Hi Julia!',
              style: TextStyle(
                color: Color(0xFF4A4A4A),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(), // Add space between title and profile icon
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            _buildFeatureCard(
              context,
              title: 'Your Diet Chart',
              image: 'assets/images/diet.png', // Replace with your image path
              routeName: '/diet', // Define route for Diet Screen
            ),
            SizedBox(height: 20),
            _buildFeatureCard(
              context,
              title: 'Daily Exercise',
              image: 'assets/images/yoga.png', // Replace with your image path
              routeName: '/exercise', // Define route for Exercise Screen
            ),
            SizedBox(height: 20),
            _buildFeatureCard(
              context,
              title: 'Sleep Schedule',
              image:
                  'assets/images/calendar.png', // Replace with your image path
              routeName: '/sleep', // Define route for Sleep Screen
            ),
            SizedBox(height: 20),
            _buildFeatureCard(
              context,
              title: 'Online Chat',
              image: 'assets/images/doctor.png', // Replace with your image path
              routeName: '/chat', // Define route for Chat Screen
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Color(0xFF5A5A97), // Highlight selected icon
        unselectedItemColor: Colors.grey, // Unselected icon color
        onTap: (int index) {
          // Define navigation for bottom bar icons
          switch (index) {
            case 0: // Home
              break; // Already on Home screen
            case 1: // Progress
              Navigator.pushNamed(
                  context, '/progress'); // Navigate to Progress screen
              break;
            case 2: // Notifications
              Navigator.pushNamed(context,
                  '/notifications'); // Navigate to Notifications screen
              break;
            case 3: // Settings
              Navigator.pushNamed(
                  context, '/settings'); // Navigate to Settings screen
              break;
          }
        },
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context,
      {required String title,
      required String image,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              image,
              height: 80, // Adjust image height as needed
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
