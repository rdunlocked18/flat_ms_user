import 'dart:convert';

import '../model/product.dart';
import 'package:http/http.dart' as http;

class ProductService {
  List<Person>? _products;

  List<Person>? get productList => _products;

  Future<List<Person>?> getProducts() async {
    List result = [];
    String? url = 'https://reqres.in/api/users?page=1';
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      result = (jsonDecode(res.body)['data'] as List);
      print(res.body);
      final List<Person> prods = [];
      for (var element in result) {
        Person? s = Person.fromJson(element);
        prods.add(s);
      }
      _products = prods;
      print(_products);
      return _products;
    } else {
      return [];
    }
  }
}
