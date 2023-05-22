import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        leading: const Icon(Icons.code),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Fluent in English',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Knowledge in assembling computers and computers in general',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Ability to control emotions when necessary',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
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
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              isActive: false,
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
              onPressed: () {},
              isActive: true,
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
