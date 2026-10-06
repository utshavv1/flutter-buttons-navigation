import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const CircleAvatar(
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Student Profile',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Name: Student',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Role: Student',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Email: student@example.com',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 30),

                FilledButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Edit Profile selected'),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit Profile'),
                ),

                const SizedBox(height: 12),

                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}