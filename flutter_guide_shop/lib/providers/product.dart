import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_complete_guide/models/http_exception.dart';

import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false});

  Future<void> toggleFavouriteStatus(String token, String userId) async {
    final url = Uri.parse(
        'https://flutter-tutorial-shop-ap-e41db-default-rtdb.firebaseio.com/userFavorites/$userId/$id.json?auth=$token');

    isFavorite = !isFavorite;
    notifyListeners();
    try {
      final response = await http.put(url,
          body: json.encode(
            isFavorite,
          ));

      if (response.statusCode >= 400)
        throw HttpException('Error adding to favourites');
    } catch (e) {
      isFavorite = !isFavorite;
      notifyListeners();
      throw e;
    }
  }
}
