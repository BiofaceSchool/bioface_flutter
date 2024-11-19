import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE066),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF7E227B), // Color morado
          ),
        ),
        backgroundColor: const Color(0xFFFFE066),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'PERSONAL INFORMATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF800080),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Full Name: Armando Mendoza\n'
                  'Email: u203452658@upc.edu.pe\n'
                  'Institution: University of Science\n'
                  'Program: Software',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 20),
            const Text(
              'FACIAL RECOGNITION STATUS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF800080),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Status: Approved',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      'Last Updated: [Date of Last Update]',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar 'Upload New Picture'
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF800080),
                ),
                child: const Text(
                  'Upload New Picture',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
