import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:pokedex/Models/Pokemon.dart';

class PokemonList {
  static Future<List<Pokemon>> fetchPokemonList() async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Pokemon> pokemonList = [];
      for (var item in data) {
        pokemonList.add(Pokemon.fromJson(item));
      }
      return pokemonList;
    } else {
      throw Exception('Failed to load data.');
    }
  }
}
