import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character.dart';

class ApiService {
  static const String baseUrl = 'https://dragonball-api.com/api/characters';

  static Future<List<Character>> fetchCharacters({int limit = 100}) async {
    final url = Uri.parse('$baseUrl?limit=$limit');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> items = data['items'];
      return items.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar los personajes');
    }
  }
}
