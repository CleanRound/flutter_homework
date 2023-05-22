// ignore_for_file: library_private_types_in_public_api, duplicate_ignore

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
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bio'),
        leading: const Icon(Icons.home),
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
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomButton(
              label: 'Main',
              icon: Icons.home,
              onPressed: () {},
              isActive: true,
            ),
            BottomButton(
              label: 'Education',
              icon: Icons.school,
              onPressed: () {
                Navigator.pushNamed(context, '/education');
              },
              isActive: false,
            ),
            BottomButton(
              label: 'Skills',
              icon: Icons.code,
              onPressed: () {
                Navigator.pushNamed(context, '/skills');
              },
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomButton extends StatefulWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isActive;

  const BottomButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isActive = false,
  }) : super(key: key);

  @override
    // ignore: library_private_types_in_public_api
  _BottomButtonState get createState => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    const activeColor = Colors.red;
    const inactiveColor = Colors.grey;
    final color = widget.isActive ? activeColor : inactiveColor;

    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: isHovered ? activeColor : color,
          ),
          const SizedBox(height: 4),
          Text(
            widget.label,
            style: TextStyle(
              color: isHovered ? activeColor : color,
              fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}