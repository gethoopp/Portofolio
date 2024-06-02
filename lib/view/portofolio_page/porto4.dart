import 'package:flutter/material.dart';
import 'package:porto/widget/porto_widget.dart';

class Porto4 extends StatelessWidget {
  const Porto4({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: PortoWidget(size: size, image: 'Assets/4.jpg', text: 'News App', text1: 'Tech : Bloc , Api News'),
    );
  }
}