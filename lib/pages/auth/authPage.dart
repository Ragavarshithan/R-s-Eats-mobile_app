

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/main.dart';
import 'package:mobile_app/pages/auth/signIn.dart';
import 'package:mobile_app/pages/draft.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/pages/profile.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return RedirectPage();
          }else
            {
              return SignInPage();
            }
        }
      )
    );
  }
}