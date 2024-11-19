import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE066),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7E227B),
                ),
              ),
              const Text(
                'USERNAME',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7E227B),
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Color(0xFFFFE066),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'APPROVED',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7E227B),
                ),
              ),
              const Text(
                'Institution Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const Text(
                'CODE U12342425',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.account_balance,
                size: 50,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  // Redirigir al login
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: const Color(0xFF7E227B),
                ),
                child: const Text('Log out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
