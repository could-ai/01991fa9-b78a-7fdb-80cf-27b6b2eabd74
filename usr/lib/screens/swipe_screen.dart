import 'package:flutter/material.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({super.key});

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  // Dummy list of profiles
  final List<Map<String, String>> profiles = [
    {'name': 'Jamie', 'age': '28', 'bio': 'Foodie and traveler!'},
    {'name': 'Taylor', 'age': '24', 'bio': 'Music lover seeking fun.'},
    {'name': 'Jordan', 'age': '26', 'bio': 'Fitness enthusiast.'},
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex < profiles.length
          ? Center(
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 300,
                  height: 400,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey,
                        child: Text(profiles[currentIndex]['name']![0]),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '${profiles[currentIndex]['name']}, ${profiles[currentIndex]['age']}',
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(profiles[currentIndex]['bio']!),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                currentIndex++;
                              });
                            },
                            backgroundColor: Colors.red,
                            child: const Icon(Icons.close),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                currentIndex++;
                              });
                            },
                            backgroundColor: Colors.green,
                            child: const Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const Center(
              child: Text('No more profiles!', style: TextStyle(fontSize: 20)),
            ),
    );
  }
}