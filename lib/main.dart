import 'package:flutter/material.dart';
import 'package:bioface_flutter/screens/initial_screen.dart';
import 'package:bioface_flutter/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrowEasy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      initialRoute: '/initial', // Ruta inicial
      routes: {
        '/initial': (context) => const InitialScreen(),
        '/login': (context) => const LoginScreen(), // Ruta para la pantalla de login
      },
    );
  }
}