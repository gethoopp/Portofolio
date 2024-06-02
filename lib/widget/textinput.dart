
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


SizedBox textinput(
  {
    required TextEditingController controller,
    required text,


  }
) {
    return SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: text,
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ))),
            ),
          ),
        );
  }