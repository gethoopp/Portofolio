import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortoWidget extends StatelessWidget {
  const PortoWidget({
    super.key,
    required this.size,
     required this.image,
     required this.text,
     required this.text1
  });

  final Size size;
  final String image;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.2),
          child: Container(
            width: 300,
            height: 300,
            decoration:  BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          text,
          style: GoogleFonts.aBeeZee(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          text1,
          style: GoogleFonts.aBeeZee(color: Colors.white),
        ),
      )
    ]);
  }
}
