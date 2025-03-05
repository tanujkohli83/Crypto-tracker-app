import 'package:flutter/material.dart';

class InsideCryptoCard extends StatelessWidget {
  const InsideCryptoCard({
    super.key,
    required this.cryptoCoinName,
    required this.currentPrice,
    required this.mktCap,
    required this.high24,
    required this.low24,
  });

  final String cryptoCoinName;
  final double currentPrice;
  final double mktCap;
  final double high24;
  final double low24;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cryptoCoinName,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            currentPrice.toString(),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Market Cap : \$ $mktCap".toUpperCase(),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "24 hrs High",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 100),
              Text(
                "24 hrs low",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                high24.toString(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 100),
              Text(
                low24.toString(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
