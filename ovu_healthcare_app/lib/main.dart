// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ovu_healthcare_app/pages/Calendar_page.dart';
import 'package:ovu_healthcare_app/pages/Chats_page.dart';
import 'package:ovu_healthcare_app/pages/Consultation_page.dart';
import 'package:ovu_healthcare_app/pages/Home_page.dart';
import 'package:ovu_healthcare_app/pages/Login_page.dart';
import 'package:ovu_healthcare_app/pages/Meds_page.dart';
import 'package:ovu_healthcare_app/pages/Register_page.dart';



void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    final GoRouter _router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path:'/',
          builder: (BuildContext context, GoRouterState state) => LoginPage(),
        ),
        GoRoute(
          path: '/register',
          builder: (BuildContext context, GoRouterState state) => Register(),
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) => HomePage(),
        ),
        GoRoute(
          path: '/meds',
          builder: (BuildContext context, GoRouterState state) => Meds(),
        ),
        GoRoute(
          path: '/calendar',
          builder: (BuildContext context, GoRouterState state) => Calendar(),
        ),
        GoRoute(
          path: '/chats',
          builder: (BuildContext context, GoRouterState state) => ChatsPage(),
        ),
        GoRoute(
          path: '/consul',
          builder: (BuildContext context, GoRouterState state) => Consultation(),
        ),
       ],
      );

        return MaterialApp.router(
          title: 'OVU HealthCare App',
          routerDelegate: _router.routerDelegate,
          routeInformationParser: _router.routeInformationParser,
          routeInformationProvider: _router.routeInformationProvider,
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
        );

  }


}




