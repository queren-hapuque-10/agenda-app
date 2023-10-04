import 'package:agenda/contatos/home_page.dart';
import 'package:agenda/notas/screens/home.dart';
import 'package:agenda/tarefas/screens/tarefa.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class Agenda extends StatelessWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Menu();
  }
}

class _MenuState extends State<Menu> {

  int _opcaoSelecionada = 0;

  PaginaSelecionada(int index) {
    switch (index) {
      case 0:
        return Tarefa();
      case 1:
        return HomePage();
      case 2:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PaginaSelecionada(_opcaoSelecionada),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _opcaoSelecionada,
          fixedColor:Color.fromARGB(211, 114, 69, 145),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          onTap: (opcao) {
         //   print("clicou $opcao");

            setState(() {
              _opcaoSelecionada = opcao;
            });
          },
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.toc_rounded, color:Color.fromARGB(211, 114, 69, 145) ),
              label: 'Tarefas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_outlined, color:Color.fromARGB(211, 114, 69, 145) ),
              label: 'Contatos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined, color:Color.fromARGB(211, 114, 69, 145) ),
              label: 'Notas',
            ),
          ]
    ),
    );
  }


}
