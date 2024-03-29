import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final String registerNumber;
  final String profileImageUrl; // URL to the student's profile image

  const StudentCard({
    super.key,
    required this.name,
    required this.registerNumber,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage:AssetImage(profileImageUrl),
              radius: 50.0,

            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Register No: $registerNumber",
              style: const TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle Live Tracking button press
                // (e.g., navigate to tracking page)
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 40.0),
              ),
              child: const Text("Live Tracking"),
            ),
          ],
        ),
      ),
    );
  }
}