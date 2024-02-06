import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ovu_healthcare_app/pages/Home_page.dart';
import 'package:ovu_healthcare_app/pages/Login_page.dart';

class AuthGate extends StatelessWidget{
  const AuthGate({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return const HomePage();
          }
          else {
            return LoginPage();
          }

        },
      ),
    );
  }


}