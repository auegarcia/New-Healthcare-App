// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart' ;
import 'package:go_router/go_router.dart';

class CustomFABBottomeAppBar extends StatelessWidget{
  const CustomFABBottomeAppBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      color: Color.fromARGB(255, 248, 158, 218),
      elevation: 5,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => context.go('/home'),
          ),
          IconButton(
            icon: const Icon(Icons.healing),
            onPressed: () => context.go('/meds'),
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () => context.go('/calendar'),
          ),
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () => context.go('/chats'),
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => context.go('/consul'),
          ),
        ],
      ),  
    );
  }
}

