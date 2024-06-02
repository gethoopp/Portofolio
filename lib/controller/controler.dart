import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
final auth = FirebaseAuth.instance;
final Uri url = Uri.parse('https://github.com/gethoopp');
final Uri urlx = Uri.parse('https://www.linkedin.com/in/haliim-pamungkas-harjo-suyono/');
final Uri urlxx = Uri.parse('https://www.instagram.com/letcode_var/');