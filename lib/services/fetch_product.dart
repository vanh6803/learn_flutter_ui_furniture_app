import 'dart:convert';

import 'package:funitureapp/models/product.dart';
import 'package:http/http.dart' as http;

// fetch our products form api
Future<List<Product>> fetchProducts() async {
  const String apiUrl =
      'https://5f210aa9daa42f001666535e.mockapi.io/api/products';
  final response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    //if the server did return a 200 ok response
    //then parse the json
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    return products;
  } else {
    //if the server did not return a 200 ok response
    //then throw an exception
    throw Exception('failed to load');
  }
}
