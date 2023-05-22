import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        leading: const Icon(Icons.school),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Education',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'IT STEP',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Vocational College of "Ukraine" University',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Lyceum №4',
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
              onPressed: () {},
              isActive: true,
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
