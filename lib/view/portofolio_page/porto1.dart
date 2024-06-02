import 'package:flutter/material.dart';
import 'package:porto/widget/porto_widget.dart';

class Porto1 extends StatelessWidget {
  const Porto1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: PortoWidget(size: size,image: 'Assets/booky.png',text: 'Booky App',text1: 'Tech : Golang Backend, Mysql, Bloc , Firebase Auth',));
  }
}

