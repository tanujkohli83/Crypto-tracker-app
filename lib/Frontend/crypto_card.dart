import 'package:crypto_tracker_app/Backend/services.dart';
import 'package:crypto_tracker_app/Frontend/inside_crypto_card.dart';
import 'package:flutter/material.dart';

class CryptoCard extends StatefulWidget {
  const CryptoCard({super.key});

  @override
  State<CryptoCard> createState() => _CryptoCardState();
}

class _CryptoCardState extends State<CryptoCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 34, 34, 1),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          //final data = snapshot.data;
          //print(snapshot.data.runtimeType);
          final List<dynamic> data = snapshot.data as List<dynamic>;
          //print(data);

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('No data available'));
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("Open DialogBox");
                    },
                    child: Column(
                      children: [
                        for (int i = 0; i < data.length; i++)
                          Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: InsideCryptoCard(
                              cryptoCoinName: data[i]['name'].toString(),
                              currentPrice:
                                  (data[i]['current_price'] ?? 0).toDouble(),
                              high24: (data[i]['high_24h'] ?? 0).toDouble(),
                              low24: (data[i]['low_24h'] ?? 0).toDouble(),
                              mktCap: (data[i]['market_cap'] ?? 0).toDouble(),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
