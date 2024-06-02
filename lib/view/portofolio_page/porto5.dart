import 'package:flutter/material.dart';
import 'package:porto/widget/porto_widget.dart';

class Porto5 extends StatelessWidget {
  const Porto5({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: PortoWidget(
          size: size,
          image: 'Assets/5.png',
          text: 'Todo App',
          text1: 'Tech : Firebase Auth, Isar Local database, Notification'),
    );
  }
}
