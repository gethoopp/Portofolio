import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: size.height * 0.1,left: size.width * 0.05),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    '/About'
                  ),
                  child: Text('About',style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 25),)),
              ),


                Padding(
                padding:  EdgeInsets.only(top: size.height * 0.1,left: size.width * 0.05),
                child: Text('Contact',style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 25),),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(top: size.height * 0.2),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                child: Image.asset('Assets/H.png'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Text('Welcome To My Epic Portofolio',style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              
            ),),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: size.height * 0.2,left: size.width * 0.05),
                child: GestureDetector(
                  onTap: () => Get.toNamed('/Detail'),
                  child: Text('Detail',style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 25),)),
              ),


              Padding(
                padding:  EdgeInsets.only(top: size.height * 0.2,left: size.width * 0.05),
                child: GestureDetector(
                  onTap: () => Get.toNamed('/Portofolio'),
                  child: Text('Portofolio',style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 25),)),
              )
            ],
          ),

           

         
        ],
      ),
    );
  }
}