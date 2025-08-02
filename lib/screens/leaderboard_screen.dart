// lib/screens/leaderboard_screen.dart
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  final List<Map<String, dynamic>> dummyLeaderboard = const [
    {"name": "Aarav Sharma", "amount": 8000},
    {"name": "Meera Iyer", "amount": 7000},
    {"name": "Varun Reddy", "amount": 6500},
    {"name": "Ishita Roy", "amount": 5000},
    {"name": "Rahul Mehta", "amount": 4500},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🏆 Leaderboard")),
      body: ListView.builder(
        itemCount: dummyLeaderboard.length,
        itemBuilder: (context, index) {
          final user = dummyLeaderboard[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text(
                "${index + 1}",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(user["name"]),
            trailing: Text(
              "₹${user["amount"]}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
