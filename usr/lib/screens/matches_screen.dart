import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  // Dummy matches list
  final List<String> matches = ['Jamie', 'Taylor'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
            ),
            title: Text(matches[index]),
            subtitle: const Text('You matched!'),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          );
        },
      ),
    );
  }
}