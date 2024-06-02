import 'package:flutter/material.dart';
import 'package:porto/widget/porto_widget.dart';

class Porto3 extends StatelessWidget {
  const Porto3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      body: PortoWidget(size: size, image: 'Assets/3.jpg', text: 'Foodies App', text1: 'Tech : GetX , Firebase'),
    );
  }
}