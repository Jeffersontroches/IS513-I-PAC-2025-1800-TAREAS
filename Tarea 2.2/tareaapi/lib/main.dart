import 'package:flutter/material.dart';
import 'package:tareaapi/views/character_screen.dart';

void main() => runApp(const DragonBallApp());

class DragonBallApp extends StatelessWidget {
  const DragonBallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dragon Ball Characters',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const CharactersScreen(),
    );
  }
}
