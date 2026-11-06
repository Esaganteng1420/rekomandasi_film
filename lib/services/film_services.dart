
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/film.dart';

class FilmService {
  static Future<List<Film>> ambilDataFilm() async {
    final String response = await rootBundle.loadString(
      'assets/data/film.json',
    );

    final List<dynamic> data = jsonDecode(response);

    return data.map((item) {
      return Film.fromJson(item);
    }).toList();
  }
}
