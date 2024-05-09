

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/components/button.dart';
import 'package:mobile_app/components/squareTile.dart';
import 'package:mobile_app/components/textInput.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage>createState()=> _signInPageState();
}

class  _signInPageState extends State<SignInPage>{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {

    showDialog(
      context: context,
      builder: (context){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );


    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text
      );

      Navigator.pop(context);
    } on FirebaseAuthException catch (e){
      Navigator.pop(context);
      print(e.stackTrace);
      if(e.code == 'user-not-found'){
        wrongEmailMessage();
      }

      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context){
          return const AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                'Incorrect Email',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
    }
    );
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context){
          return const AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                'Incorrect Password',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }
        );
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              RichText  (text: TextSpan(
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

              const SizedBox(height: 50),

              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
                ),
              ),

              const SizedBox(height: 25),

              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false
              ),

              const SizedBox(height: 10),

              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true
              ),

              const SizedBox(height: 10),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
              ),

              const SizedBox(height: 25),

              ButtonComponent(
                  onTap: signUserIn,
              ),

              const SizedBox(height: 50),
              
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                      ),

                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                      ),
                      Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                      ),
                    ],
                  ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const[
              //     SquareTile(imagePath: 'assets/images/milkshake/1.jpg'),
              //     SizedBox(width: 25),
              //     SquareTile(imagePath: 'assets/images/milkshake/1.jpg')
              //   ],
              // ),
               const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}