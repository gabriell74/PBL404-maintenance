import 'package:flutter/material.dart';
import 'package:gosheep_mobile/core/widgets/custom_button.dart';
import 'package:gosheep_mobile/core/widgets/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 60),

              Image.asset('assets/images/goSheep_logo.png', height: 230),

              const SizedBox(height: 20),

              const SizedBox(height: 8),
              CustomTextField(icon: Icons.email, hint: 'Nama'),
              const SizedBox(height: 20),

              const SizedBox(height: 8),
              CustomTextField(icon: Icons.email, hint: 'Email'),
              const SizedBox(height: 20),

              const SizedBox(height: 8),
              CustomTextField(
                icon: Icons.lock,
                hint: 'Password',
                isPassword: true,
              ),

              const SizedBox(height: 50),

              CustomButton(text: "Register", onPressed: () {}),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sudah punya akun? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF2E7D32)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
