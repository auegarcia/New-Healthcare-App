// ignore_for_file: unnecessary_new, prefer_const_constructors, file_names, use_build_context_synchronously, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ovu_healthcare_app/constants/auth_serveice.dart';


 class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();

}

class LoginPageState extends State <LoginPage> with SingleTickerProviderStateMixin{

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  void login(BuildContext context) async {

    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(_emailController.text, _pwController.text,);
    }

    catch (e) {
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ),
      );
    }
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
                                  onPressed: () => login(context),
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