import 'package:flutter/material.dart';
import '../models/character.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({Key? key, required this.character})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 500,
                child: Image.network(
                  character.image,
                  fit: BoxFit.contain,
                  errorBuilder:
                      (context, error, stackTrace) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Nombre: ${character.name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text('Raza: ${character.race ?? "Desconocida"}'),
            const SizedBox(height: 10),
            Text('Ki: ${character.ki ?? "Desconocido"}'),
            const SizedBox(height: 10),
            Text('Max Ki: ${character.maxKi ?? "Desconocido"}'),
            const SizedBox(height: 10),
            Text('Afiliación: ${character.affiliation ?? "Desconocida"}'),
          ],
        ),
      ),
    );
  }
}
