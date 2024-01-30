// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable


import 'package:flutter/material.dart';
import 'package:ovu_healthcare_app/constants/navbar.dart';



class HomePage extends StatefulWidget{
const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("OVU"),
          centerTitle: true,
          elevation: 0,
          actions: [IconButton(onPressed: () {
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.logout))],
          ),
        bottomNavigationBar: CustomFABBottomeAppBar(),
      );
  }
}