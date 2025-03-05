import 'package:crypto_tracker_app/Frontend/crypto_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CryptoScreen(),
    );
  }
}
