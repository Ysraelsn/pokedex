class Pokemon {
  final int pokemon_id;
  final String name;
  final List<String> types;
  final int weight;
  final int height;

  const Pokemon(
      {required this.pokemon_id,
      required this.name,
      required this.types,
      required this.height,
      required this.weight});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'pokemon_id': int pokemon_id,
        'name': String name,
        'types': List<String> types,
        'weight': int weight,
        'height': int height
      } =>
        Pokemon(
            pokemon_id: pokemon_id,
            name: name,
            types: types,
            height: height,
            weight: weight),
      _ => throw const FormatException('Falló al cargar modelo'),
    };
  }
}
