import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final int age;
  final List<String> likes;

  const HomeScreen({
    Key? key,
    this.name = 'Oleg',
    this.age = 15,
    this.likes = const [
      'Playing computer games',
      'Playing the guitar',
      'Listening to hard-rock music',
      'Exploring new technologies',
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bio'),
        leading: const Icon(Icons.terminal),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_important),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, I\'m $name!',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Things I like:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              children: likes
                  .map(
                    (like) => ListTile(
                      leading: const Icon(Icons.favorite),
                      title: Text(like),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'My Flutter Homework',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}