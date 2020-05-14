
import 'dart:async';

import 'package:flutterapp/models/chuck_response.dart';
import 'package:flutterapp/networking/ApiProvider.dart';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckResponse> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return chuckResponse.fromJson(response);
  }
}
