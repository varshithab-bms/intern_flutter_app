// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'leaderboard_screen.dart';
import 'announcements_screen.dart';

class HomeScreen extends StatefulWidget {
  final String internName;

  const HomeScreen({super.key, required this.internName});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      DashboardScreen(name: widget.internName),
      const LeaderboardScreen(),
      const AnnouncementsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: "Announcements",
          ),
        ],
      ),
    );
  }
}
