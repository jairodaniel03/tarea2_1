import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea2_1/views/home_page.dart';
import 'package:tarea2_1/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(
            name: 'home',
            path: '/home',
            builder: (context, state) => const MyHomePage(),
          ),
          GoRoute(
            name:'login', 
            path: '/login',
            builder: (context,state)=>  LoginPage(),
            
          )

          
        ],
     )
    );
  }
}

