import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Icon(
                Icons.info_outline,
                size: 70,
              ),

              const SizedBox(height: 20),

              const Text(
                'Application Details',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'This application demonstrates different '
                    'Material Design buttons and navigation '
                    'methods in Flutter.',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Navigation methods demonstrated:',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text('• Navigator.push()'),
              const Text('• Navigator.pop()'),
              const Text('• Navigator.pushReplacement()'),
              const Text('• Navigator.pushNamed()'),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}