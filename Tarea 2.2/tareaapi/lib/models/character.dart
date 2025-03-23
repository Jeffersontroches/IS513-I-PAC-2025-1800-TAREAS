class Character {
  final String name;
  final String image;
  final String? ki;
  final String? race;
  final String? maxKi;
  final String? affiliation;

  Character({
    required this.name,
    required this.image,
    this.ki,
    this.race,
    this.maxKi,
    this.affiliation,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      image: json['image'],
      ki: json['ki']?.toString(),
      race: json['race'],
      maxKi: json['maxKi']?.toString(),
      affiliation: json['affiliation'],
    );
  }
}
