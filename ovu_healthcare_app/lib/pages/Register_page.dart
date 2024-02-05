// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ovu_healthcare_app/constants/auth_service.dart';



class Register extends StatelessWidget{
   Register ({super.key});


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

//register 
  void register (BuildContext context) {

      final _auth = AuthService ();
  }



    @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SingleChildScrollView(

              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.of(context).size.height - 100 ,
                width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget> [

                        Column(
                          children: <Widget> [
                            const SizedBox(height: 60.0),
                            const Text(
                              "Sign up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Create your Account",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        

                        Column(
                          children: <Widget> [

                          // Email Textfield 
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none),
                                    fillColor: Colors.purple.withOpacity(.2),
                                    filled: true,
                                    prefixIcon: const Icon(Icons.person),
                                ),
                              ),
                      
                          // Password Textfield
                        const SizedBox(height: 20),
                              TextField(
                                controller: _pwController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none),
                                      fillColor: Colors.purple.withOpacity(.2),
                                      filled: true,
                                      prefixIcon: const Icon(Icons.password),
                                ),
                                obscureText: true,
                              ),


                          // Mobile Number Textfield
                        const SizedBox(height: 20),
                              TextField(
                                controller: _numberController,
                                decoration: InputDecoration(
                                  hintText: "Mobile Number",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none),
                                      fillColor: Colors.purple.withOpacity(.2),
                                      filled: true,
                                      prefixIcon: const Icon(Icons.phone),
                                ),
                              ),

                        Container(
                          padding: const EdgeInsets.only(top: 50, left: 5),

                            child: ElevatedButton(
                              onPressed: () => register(context),
                                child: const Text('Sign up'),
                            ),
                        ),
                      ],
                    ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            const Text("Already have an account?"),
                              TextButton(onPressed: () {
                                  GoRouter.of(context).go('/');
                              }, 
                                child: const Text("Login", style: TextStyle(color: Colors.purple),),
                              )
                                
                          ],
                        )

                  ],
                ),
              )
            ),
          ),
        );
      }

}