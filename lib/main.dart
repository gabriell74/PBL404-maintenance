import 'package:flutter/material.dart';
import 'features/authentication/screens/login_screen.dart';

void main() {
  runApp(const GoSheepApp());
}

class GoSheepApp extends StatelessWidget {
  const GoSheepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
