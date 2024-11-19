import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD34E), // Color amarillo de fondo
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NEED HELP?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7E227B), // Color morado
              ),
            ),
            SizedBox(height: 30),
            HelpCard(
              title: 'FREQUENTLY ASKED QUESTIONS (FAQS)',
              description:
              'Find answers to common questions related to the facial recognition system and access issues.',
            ),
            SizedBox(height: 20),
            HelpCard(
              title: 'CONTACT TECHNICAL SUPPORT',
              description:
              'If you need immediate assistance, you can reach out to our technical support team.',
            ),
            SizedBox(height: 20),
            HelpCard(
              title: 'REPORT A PROBLEM',
              description:
              'If you encounter a specific issue, you can fill out a report form to let us know.',
            ),
          ],
        ),
      ),
    );
  }
}

class HelpCard extends StatelessWidget {
  final String title;
  final String description;

  const HelpCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFD1A42D), // Color dorado
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7E227B), // Color morado
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
