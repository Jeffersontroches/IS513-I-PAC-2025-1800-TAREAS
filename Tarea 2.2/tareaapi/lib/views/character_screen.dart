import 'package:flutter/material.dart';
import 'package:tareaapi/services/api_services.dart';
import '../models/character.dart';
import 'character_detail_screen.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<Character> characters = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCharacters();
  }

  Future<void> loadCharacters() async {
    try {
      characters = await ApiService.fetchCharacters();
    } catch (e) {
      // Manejo de error (puedes agregar un mensaje al usuario)
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personajes Dragon Ball')),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return ListTile(
                    leading: Image.network(character.image, width: 50),
                    title: Text(character.name),
                    subtitle: Text(
                      character.ki != null
                          ? 'Ki: ${character.ki}'
                          : 'Ki desconocido',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  CharacterDetailScreen(character: character),
                        ),
                      );
                    },
                  );
                },
              ),
    );
  }
}
