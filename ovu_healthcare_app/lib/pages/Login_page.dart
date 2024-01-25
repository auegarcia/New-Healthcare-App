// ignore_for_file: unnecessary_new, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


 class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State <LoginPage> with SingleTickerProviderStateMixin{

  late AnimationController _iconAnimationController;
  late Animation <double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut
    );
    _iconAnimation.addListener(() =>  this.setState((){}));
    _iconAnimationController.forward();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 209, 222),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget> [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              new Image(
                image: new AssetImage("assets/Logo.png"),
                height: 250,
                width: 250,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.deepPurple,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                    )
                  ),
                child: new Container(
                  padding: const EdgeInsets.all(40),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget> [

                            TextField(
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

                        const SizedBox(height: 20),
                              TextField(
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

                            new Padding(
                              padding: const EdgeInsets.only(top: 40),
                            ),
                                new MaterialButton(
                                  height: 40,
                                  minWidth: 150,
                                  color: Color.fromARGB(255, 248, 158, 218),
                                  textColor:Color.fromARGB(255, 255, 255, 255),
                                  child: new Text("Login"),
                                  onPressed: () {
                                    GoRouter.of(context).go('/home');
                                  },
                                  splashColor: Colors.deepPurpleAccent,
                                ),
                                new MaterialButton(
                                  height: 40,
                                  minWidth: 150,
                                  color: Color.fromARGB(255, 248, 158, 218),
                                  textColor:Color.fromARGB(255, 255, 255, 255),
                                  child: new Text("Register"),
                                  onPressed: () {
                                      GoRouter.of(context).go('/register');
                                  },
                                  splashColor: Colors.deepPurpleAccent,
                                ),

                      ],
                  ),
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}