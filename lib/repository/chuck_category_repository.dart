import 'dart:async';

import 'package:flutterapp/models/chuck_categories.dart';
import 'package:flutterapp/networking/ApiProvider.dart';

class ChuckCategoryRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckCategories> fetchChuckCategoryData() async {
    final response = await _provider.get("jokes/categories");
    return chuckCategories.fromJson(response);
  }
}
