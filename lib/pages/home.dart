import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = ['item 1', 'item2', 'item 3', 'item 4'];
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  // void login() async {
  //   var url = Uri.https('localhost:8000/api/login');
  //   var response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     var jsonResponse =
  //         convert.jsonDecode(response.body) as Map<String, dynamic>;
  //     var itemCount = jsonResponse['totalItems'];
  //     print('Number of books about http: $itemCount.');
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MI APLICACIÓN"),
      ),
      body: Row(
        children: [
          Flexible(
              child: Container(
            color: Colors.blueGrey,
          )),
          Flexible(
              child: Container(
            color: Colors.blueAccent,
          ))
        ],
      ),
    );
  }
}
