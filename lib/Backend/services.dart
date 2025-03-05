import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> getData() async {
  try {
    final result = await http.get(
      Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1',
      ),
    );

    final data = jsonDecode(result.body);

    //print(data);

    return data;
  } catch (e) {
    throw e.toString();
  }
}
