import 'package:flutter/material.dart';
import 'package:porto/widget/porto_widget.dart';

class Porto2 extends StatefulWidget {
  const Porto2({super.key});

  @override
  State<Porto2> createState() => _Porto2State();
}

class _Porto2State extends State<Porto2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: PortoWidget(size: size, image: 'Assets/kopikita.png', text: 'Kopi Kita', text1: 'Tech : Bloc, Flip Package'),
    );
  }
}