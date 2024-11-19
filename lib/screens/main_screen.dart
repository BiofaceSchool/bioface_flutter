import 'package:bioface_flutter/screens/home_screen.dart';
import 'package:bioface_flutter/screens/profile_screen.dart';
import 'package:bioface_flutter/screens/history_screen.dart';
import 'package:flutter/material.dart';

import 'help_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Lista de pantallas para cada pestaña del BottomNavigationBar
  final List<Widget> _pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const HistoryScreen(),
    HelpScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
        ],
      ),
    );
  }
}
