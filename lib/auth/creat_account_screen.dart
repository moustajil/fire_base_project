import 'package:firebaseproject/auth/login_screen.dart';
import 'package:firebaseproject/widget/input_field.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/diary.png',
                    height: 80,
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sign up to get started',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 30),

                  /// Full Name
                  buildInputField(
                    controller: nameController,
                    label: 'Full Name',
                    icon: Icons.person,
                  ),

                  const SizedBox(height: 20),

                  /// Email
                  buildInputField(
                    controller: emailController,
                    label: 'Email',
                    icon: Icons.email,
                  ),

                  const SizedBox(height: 20),

                  /// Password
                  buildInputField(
                    controller: passwordController,
                    label: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                  ),

                  const SizedBox(height: 20),

                  /// Confirm Password
                  buildInputField(
                    controller: confirmPasswordController,
                    label: 'Confirm Password',
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),

                  const SizedBox(height: 30),

                  /// Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign-up logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Login Link
                  TextButton(
                    onPressed: () {
                                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => LoginScreen()));

                    },
                    child: const Text(
                      'Already have an account? Login',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
