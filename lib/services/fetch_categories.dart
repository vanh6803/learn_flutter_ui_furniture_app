import 'dart:convert';

import '../models/categories.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fetchCategories() async {
  const String apiUrl =
      'https://5f210aa9daa42f001666535e.mockapi.io/api/categories';
  final response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    //if the server did return a 200 ok response
    //then parse the json
    List<Category> categories = (json.decode(response.body) as List)
        .map((data) => Category.formJson(data))
        .toList();
    return categories;
  } else {
    //if the server did not return a 200 ok response
    //then throw an exception
    throw Exception('failed to load');
  }
}
