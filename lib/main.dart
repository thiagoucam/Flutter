import 'package:flutter/material.dart';
import 'package:petshop/screans/home_screen.dart';
import 'package:petshop/screans/form_pe_screaan.dart';
import 'package:petshop/screans/pet/perfil_pet.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Adote-me",
      home: new HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

