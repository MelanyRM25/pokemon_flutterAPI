import 'package:flutter/material.dart';
import 'package:pokemon/pages/home.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY APP",
      home: Home(),
    );
  }
}
