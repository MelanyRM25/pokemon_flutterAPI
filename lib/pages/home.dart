import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    var url = Uri.https('localhost:8000/api/login');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MI APLICACIÓN"),
        ),
        body: ListView(
          children: [
            Text("Item A"),
            Text("Item B"),
            Text("Item C"),
            Text("Item D"),
            Text("Item E"),
            Text("Item F"),
            Text("Item G"),
            Text("Item H"),
            Text("Item I"),
            Text("Item J"),
            Text("Item K"),
            Text("Item L"),
          ],
        ));
  }
}
