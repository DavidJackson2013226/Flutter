import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rapick/Authentication/LoginScreen.dart';
import 'package:rapick/Authentication/SignUp.dart';
import 'package:rapick/LoginPage.dart';
import 'package:rapick/MySplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RaPick());
}

class RaPick extends StatelessWidget {
  const RaPick({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ra-Pick',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),

      home: LoginScreen(),
      // home: const (title: 'Flutter Demo Home Page'),
    );
  }
}
