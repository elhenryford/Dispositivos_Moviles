import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double horizontalPadding = screenWidth * 0.05; // 5% de padding horizontal
    final double inputHeight = screenHeight * 0.07; // 7% de altura de input
    final double buttonHeight = screenHeight * 0.08;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight * 0.05),
          Container(
            height: screenHeight * 0.08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFF0067C2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          const Text('Email:', style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          Container(
            height: inputHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black, width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          const Text('Password:', style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          Container(
            height: inputHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black, width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          SizedBox(
            height: buttonHeight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF212121),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
              onPressed: () {},
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 16, letterSpacing: 1.25),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          SizedBox(
            height: buttonHeight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF212121),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
              onPressed: () {},
              child: const Text(
                'REGISTRARSE',
                style: TextStyle(fontSize: 16, letterSpacing: 1.25),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
        ],
      ),
    );
  }
}
