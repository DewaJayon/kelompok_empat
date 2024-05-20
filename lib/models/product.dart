import 'dart:convert';

import 'package:http/http.dart' as http;

class Product {
  final String id;
  final String title;
  final String description;
  final String image;
  final String harga;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.harga,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      harga: json['harga'],
    );
  }

  static Future<List<Product>> fetchData() async {
    var url = 'https://kusumawardanastudio.com/api/uas/kelompok4/api_read.php';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map api = json.decode(response.body);
      List jsonResponse = api['data'];

      print("data product: " + jsonResponse.toString());

      return jsonResponse.map((data) => Product.fromJson(data)).toList();
    } else {
      throw Exception('gagal mendapatkan data API');
    }
  }
}
