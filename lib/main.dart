import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'button_gallery.dart';
import 'profile_screen.dart';
import 'details_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buttons Navigation',

      initialRoute: '/',

      routes: {
        '/': (context) => const LoginScreen(),
        '/buttons': (context) => const ButtonGallery(),
        '/profile': (context) => const ProfileScreen(),
        '/details': (context) => const DetailsScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}