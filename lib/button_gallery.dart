import 'package:flutter/material.dart';

import 'details_screen.dart';
import 'add_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsScreen(),
            ),
          );
        },
        child: const Icon(Icons.info),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const Text(
                'Material Buttons',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Explore different Flutter Material buttons.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddScreen(),
                    ),
                  );
                },
                child: const Text('Add'),
              ),

              const SizedBox(height: 12),

              // Filled Button
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                  );
                },
                child: const Text('Profile'),
              ),

              const SizedBox(height: 12),

              // Filled Tonal Button
              FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settings',
                  );
                },
                child: const Text('Settings'),
              ),

              const SizedBox(height: 12),

              // Outlined Button
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  );
                },
                child: const Text('Details'),
              ),

              const SizedBox(height: 12),

              // Text Button
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Logout button pressed'),
                    ),
                  );
                },
                child: const Text('Logout'),
              ),

              const SizedBox(height: 12),

              // Button with Icon
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('View Profile'),
              ),

              const SizedBox(height: 20),

              const Divider(),

              const SizedBox(height: 10),

              const Text(
                'Icon Button',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                  );
                },
                icon: const Icon(
                  Icons.account_circle,
                  size: 45,
                ),
              ),

              const SizedBox(height: 15),

              // Custom styled button
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Custom button pressed'),
                      ),
                    );
                  },
                  child: const Text(
                    'Custom Styled Button',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}