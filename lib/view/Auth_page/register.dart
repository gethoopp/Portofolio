import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/controller/controler.dart';
import 'package:porto/cubit/authcubit_cubit.dart';
import 'package:porto/widget/textinput.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: size.width * 1,
                height: 390,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage('Assets/shibuya.jpg'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Sign Up First To See My Portofolio',
              style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          textinput(controller: email, text: 'Email'),
          textinput(controller: password, text: 'Password'),
          SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: FloatingActionButton(
                onPressed: () async{
                  context.read<AuthCubit>().singUp(email.text, password.text);

                  Future.delayed(const Duration(seconds: 1),
                  () => Get.toNamed('/Home')
                  );

                  
                },
                backgroundColor: Colors.blue,
                focusElevation: 20,
                focusColor: Colors.blueGrey,
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
