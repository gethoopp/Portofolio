// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:porto/bloc/data_bloc.dart';
import 'package:porto/controller/routes/routes.dart';
import 'package:porto/cubit/authcubit_cubit.dart';
import 'package:porto/firebase_options.dart';
import 'package:porto/liquid/liquid.dart';
import 'package:porto/view/Auth_page/login.dart';
import 'package:porto/view/Auth_page/register.dart';
import 'package:porto/view/detail_page/detail.dart';
import 'package:porto/view/homepage/homepage.dart';
import 'package:porto/view/portofolio_page/porto1.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(),
          ),
          BlocProvider(
            create: (context) => DataBloc()..add(NewData()),
          )
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: approute(),
          home:  const Homepage(),
        ),
      ),
    );
  }
}
