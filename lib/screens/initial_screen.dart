import 'package:flutter/material.dart';
import 'package:bioface_flutter/screens/login_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const LoginScreen();
            },
          ),
        );
      });
    });

    return Scaffold(
      backgroundColor: const Color(0xFFFFE066),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'BioFace',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7E227B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}