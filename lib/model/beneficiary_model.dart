import 'dart:convert';

import 'package:flutter/services.dart';

class FetchJson {
  Future readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/favorites.json');
    final data = await json.decode(response);
    return data;
    // print(data);
    // ...
  }
}
