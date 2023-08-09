import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/user_model.dart';

void main() async {
  Uri uri = Uri.parse('https://dummyjson.com/users/4');
  Response response = await get(uri);
  UserModel user = UserModel.fromMap(jsonDecode(response.body));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User App",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("${user.firstName} ${user.lastName}"),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color.fromARGB(255, 224, 8, 8),
        ),
        body: Center(
          child: Image(
            image: NetworkImage('${user.image}'),
            width: 200,
            height: 200,
          ),
        ),
      ),
    ),
  );
}
