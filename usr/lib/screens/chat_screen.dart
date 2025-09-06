import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  // Dummy chat messages
  static const List<Map<String, String>> messages = [
    {'sender': 'You', 'text': 'Hey, how\'s it going?'},
    {'sender': 'Jamie', 'text': 'Great! Want to grab coffee?'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Jamie'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]['sender']!),
                  subtitle: Text(messages[index]['text']!),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Mock send - no real functionality
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}