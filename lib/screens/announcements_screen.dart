// lib/screens/announcements_screen.dart
import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  final List<String> announcements = const [
    "🎉 New reward unlocked: Social Star!",
    "📢 Top 3 interns will get bonus certificates.",
    "📆 Final leaderboard will be shared on Aug 15.",
    "💬 Refer friends and earn rewards.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("📢 Announcements")),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.announcement, color: Colors.deepPurple),
              title: Text(announcements[index]),
            ),
          );
        },
      ),
    );
  }
}
