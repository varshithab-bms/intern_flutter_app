// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import '../widgets/reward_card.dart';

class DashboardScreen extends StatelessWidget {
  final String name;

  const DashboardScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final referralCode = name.toLowerCase().replaceAll(' ', '') + '2025';
    final donationAmount = 5000;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Intern Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context); // Go back to login
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Welcome, $name!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),

            _buildInfoCard(
              icon: Icons.code,
              title: 'Referral Code',
              value: referralCode,
            ),

            const SizedBox(height: 10),

            _buildInfoCard(
              icon: Icons.volunteer_activism,
              title: 'Donations Raised',
              value: '₹$donationAmount',
            ),

            const SizedBox(height: 20),

            Text(
              'Your Rewards',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                RewardCard(title: "Bronze Badge", icon: Icons.emoji_events),
                RewardCard(title: "Social Star", icon: Icons.star),
                RewardCard(title: "Fundraiser Lv.1", icon: Icons.campaign),
                RewardCard(title: "Donor Connect", icon: Icons.people_alt),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, size: 36, color: Colors.deepPurple),
        title: Text(title),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
