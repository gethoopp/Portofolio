
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/controller/controler.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.2),
              child: Container(
                width: 300,
                height: 250,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('Assets/H.png')),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.08, top: size.height * 0.02),
                child: Text('About Me',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.06,top: size.height * 0.03),
                child: Text(
                  textAlign: TextAlign.center,
                  'Hello My Name Haliim Pamungkas Harjo Suyono, \nalso you can call me Haliim. i\'m 23 years old junior \nflutter developer. based on Nganjuk Indonesia \n(but world wide working).  ',
                  style: GoogleFonts.blackOpsOne(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Text(
                  textAlign: TextAlign.center,
                  'I\'m available for projects, collaborations and \nexperiments. I create a modern app, forward thinking \nbrand and so on.',
                  style: GoogleFonts.blackOpsOne(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               GestureDetector(
                onTap: ()async{
                  await launcUrl(url);
                },
                child: const Icon(FontAwesomeIcons.github,color: Colors.white,)),
                const SizedBox(width: 15,),
               GestureDetector(
                onTap: ()async{
                  await launcUrl(urlx);
                },
                child: const Icon(FontAwesomeIcons.linkedin,color: Colors.blue,)),
               const SizedBox(width: 15,),
                GestureDetector(
                  onTap: ()async{
                    await launcUrl(urlxx);
                  },
                  child: const Icon(FontAwesomeIcons.instagram,color: Colors.red,))
                
            
              ],
            ),
          )
        ],
      ),
    );
  }
}


Future<void> launcUrl(Uri urlx)async{
  if (await canLaunchUrl(urlx)) {
    await launchUrl(urlx);
  }else{
    throw Exception('Tidak bisa meluncurkan $url');
  }
}