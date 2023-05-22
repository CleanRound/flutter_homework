import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentations/screens/home.dart';
import 'package:flutter_application_1/presentations/screens/education.dart';
import 'package:flutter_application_1/presentations/screens/skills.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Homework',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/education': (context) => const EducationScreen(),
        '/skills': (context) => const SkillsScreen(),
      },
    );
  }
}
