import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/firebase_options.dart';
import 'package:mobile_app/pages/root.dart';
import 'dart:async';


void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const RedirectPage());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigates to RootPage after a delay
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RootPage()),
      );
    });

    // Show splash screen UI
    return Scaffold(
      body: Center(
        child: RichText  (text: TextSpan(
        text: "R's ",
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
          fontStyle: FontStyle.italic,
        ),
        children: [
          TextSpan(
            text: "Eats",
            style: TextStyle(color: Color(0xFFC2410C)),
          )
        ],
      ),
      ),
      ),
    );
  }
}

class RedirectPage extends StatelessWidget {
  const RedirectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
        bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme.copyWith(
          selectedItemColor: Colors.red,
        )
      ),

      home: SplashScreen(),
    );
  }
}




