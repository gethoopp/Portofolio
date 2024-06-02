import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:porto/view/portofolio_page/porto1.dart';
import 'package:porto/view/portofolio_page/porto2.dart';
import 'package:porto/view/portofolio_page/porto3.dart';
import 'package:porto/view/portofolio_page/porto4.dart';
import 'package:porto/view/portofolio_page/porto5.dart';

class Liquid extends StatelessWidget {
  Liquid({super.key});

  final pages = [
    const Porto1(),
    const Porto2(),
    const Porto3(),
    const Porto4(),
    const Porto5()
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) =>
          LiquidSwipe(waveType: WaveType.circularReveal, pages: pages),
    );
  }
}
