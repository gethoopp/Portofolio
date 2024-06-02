

import 'package:get/get_navigation/get_navigation.dart';
import 'package:porto/liquid/liquid.dart';
import 'package:porto/view/About_page/about.dart';
import 'package:porto/view/Auth_page/login.dart';
import 'package:porto/view/Auth_page/register.dart';
import 'package:porto/view/detail_page/detail.dart';
import 'package:porto/view/homepage/homepage.dart';

approute() => [
  GetPage(name: '/SignUp', page: () => const RegisterPage(),transition: Transition.downToUp),
  GetPage(name: '/Login', page: () => const LoginPage(),transition: Transition.downToUp),
  GetPage(name: '/Home', page: () => const Homepage(),transition: Transition.downToUp),
  GetPage(name: '/Detail', page: () => const Detail(),transition: Transition.downToUp),
 GetPage(name: '/Portofolio', page: () =>  Liquid(),transition: Transition.downToUp),
 GetPage(name: '/About', page: () =>  const AboutPage(),transition: Transition.downToUp),
];