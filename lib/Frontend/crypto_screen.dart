import 'package:crypto_tracker_app/Frontend/crypto_card.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatefulWidget {
  const CryptoScreen({super.key});

  @override
  State<CryptoScreen> createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto App"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                debugPrint("Refresh");
              });
            },
            icon: Icon(Icons.refresh_rounded, color: Colors.white, size: 30),
          ),
        ],
        backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      ),
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: CryptoCard(),
    );
  }
}
