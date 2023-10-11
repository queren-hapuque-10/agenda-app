import 'package:agenda/contatos/home_page.dart';
import 'package:agenda/notas/screens/home.dart';
import 'package:agenda/perfil/perfil.dart';
import 'package:agenda/ui/welcome.dart';
import 'package:flutter/material.dart';
import 'package:agenda/cadastro/cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Agenda',
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
