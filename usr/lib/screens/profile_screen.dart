import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Dummy user data
  String name = 'Alex Doe';
  String bio = 'Love hiking and coffee! Looking for adventure.';
  String age = '25';
  String location = 'New York, NY';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                child: const Icon(Icons.person, size: 60),
              ),
            ),
            const SizedBox(height: 20),
            Text('Name: $name', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Age: $age', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Location: $location', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Bio: $bio', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Mock edit - could open a dialog in future
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}