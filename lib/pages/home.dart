import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = ['item 1', 'item2', 'item 3', 'item 4'];
  List pokemons = [];
  @override
  void initState() {
    pokemon150Get();
    super.initState();
  }

  pokemon150Get() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
    var response = await http.get(url);
    var body = json.decode(response.body);
    setState(() {
      pokemons = body['results'];
    });
    print(pokemons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MI APLICACIÓN"),
        ),
        body: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png'),
                title: Text(pokemons[index]['name']),
              );
            }));
  }
}

//USO DE FLEXIBLE
 // Row(
      //   children: [
      //     Flexible(
      //         child: Container(
      //       color: Colors.blueGrey,
      //     )),
      //     Flexible(
      //         child: Container(
      //       color: Colors.blueAccent,
      //     ))
      //   ],
      // ),

// LISTAS DINAMICAS
// ListView.builder(
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(items[index]),
//                     );
//                   }),
