

import 'package:agenda/contatos/home_page.dart';
import 'package:agenda/notas/screens/home.dart';
import 'package:agenda/tarefas/screens/tarefa.dart';
import 'package:agenda/ui/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
